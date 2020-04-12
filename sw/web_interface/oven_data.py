import time 
import json
import math

class OvenStatusIn(object):

	def calc_temp(self,num):
		try:
			temp = -270*math.log(num-227)+1528
		except ValueError as e:
			raise ValueError("Could not compute temperature!") from e
		if temp < -270:
			raise ValueError("Temperature too low!")
		return temp
	
	def __init__(self,ovenstr):
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
		

class Spirals(object):
	def __init__(self,instatus=None,default=False,):
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
		if adict["top_big"]:
			spirals.top_big = True
		if adict["top_small"]:
			spirals.top_small = True
		if adict["back"]:
			spirals.back = True
		if adict["bottom"]:
			spirals.bottom = True

		return spirals
	
	def publish(self,client,prefix):
		client.publish(prefix+"/top_big",int(self.top_big))
		client.publish(prefix+"/top_small",int(self.top_small))
		client.publish(prefix+"/back",int(self.back))
		client.publish(prefix+"/bottom",int(self.bottom))


