import time 
import json
import math
from dataclasses import dataclass, field, InitVar

@dataclass
class OvenStatusIn:
	ovenstr: InitVar[bytes]
	time: float = field(init=False)
	temp: float = field(init=False)
	light: bool = field(init=False)
	spirals: "Spirals" = field(init=False)
	back_fan: bool = field(init=False)
	door_fan: bool = field(init=False)

	def calc_temp(self,num):
		try:
			temp = -270*math.log(num-227)+1528
		except ValueError as e:
			raise ValueError("Could not compute temperature!") from e
		if temp < -270:
			raise ValueError("Temperature too low!")
		return temp
	
	def __post_init__(self, ovenstr):
		data = dict([part.split(":") for part in ovenstr.decode("utf-8").split(";")])
		self.time = time.time()
		self.temp = self.calc_temp(int(data["TEMP"]))
		self.light = bool(int(data["L"]))
		self.spirals = Spirals.from_serialdict(data)
		self.back_fan = bool(int(data["BF"]))
		self.door_fan = bool(int(data["DF"]))
	
	def __str__(self):
		return str(self.to_dict())

	def publish(self,client,prefix):
		client.publish(prefix+"/temp",self.temp)
		client.publish(prefix+"/light",int(self.light))
		client.publish(prefix+"/back_fan",int(self.back_fan))
		client.publish(prefix+"/door_fan",int(self.door_fan))
		self.spirals.publish(client,prefix+"/spirals")


	def to_dict(self):
		data = {"time":self.time,
			"temp":self.temp,
			"light":self.light,
			"top_big":self.spirals.top_big,
			"top_small":self.spirals.top_small,
			"back":self.spirals.back,
			"back_fan":self.back_fan,
			"bottom":self.spirals.bottom,
			"door_fan":self.door_fan}
		return data
		

@dataclass
class Spirals:
	instatus: InitVar["Spirals | None"] = None
	default: InitVar[bool] = False
	top_big: bool = field(init=False)
	top_small: bool = field(init=False)
	back: bool = field(init=False)
	bottom: bool = field(init=False)

	def __post_init__(self, instatus, default):
		if instatus:
			self.top_big = instatus.top_big
			self.top_small = instatus.top_small
			self.back = instatus.back
			self.bottom = instatus.bottom
		elif default:
			self.top_big = True
			self.top_small = True
			self.bottom = True
			self.back = False
		else:
			self.top_big = False
			self.top_small = False
			self.bottom = False
			self.back = False

	@classmethod
	def from_serialdict(cls,data):
		spirals = Spirals()
		spirals.top_big = bool(int(data["TB"])) 
		spirals.top_small = bool(int(data["TS"]))
		spirals.back = bool(int(data["BACK"]))
		spirals.bottom = bool(int(data["BOT"]))
		return spirals


	@classmethod
	def from_dict(cls,adict):
		spirals = cls()
		if "top_big" in adict and adict["top_big"]:
			spirals.top_big = True
		if "top_small" in adict and adict["top_small"]:
			spirals.top_small = True
		if "back" in adict and adict["back"]:
			spirals.back = True
		if "bottom" in adict and adict["bottom"]:
			spirals.bottom = True

		return spirals

	def __str__(self):
		return f"top_big: {self.top_big}, top_small: {self.top_small}, back: {self.back}, bottom: {self.bottom}"

	def limited_by(self, enabled: "Spirals"):
		limited = Spirals(instatus=self)
		limited.top_big = limited.top_big and enabled.top_big
		limited.top_small = limited.top_small and enabled.top_small
		limited.back = limited.back and enabled.back
		limited.bottom = limited.bottom and enabled.bottom
		return limited
	
	def publish(self,client,prefix):
		client.publish(prefix+"/top_big",int(self.top_big))
		client.publish(prefix+"/top_small",int(self.top_small))
		client.publish(prefix+"/back",int(self.back))
		client.publish(prefix+"/bottom",int(self.bottom))


