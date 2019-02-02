import time 
import json
class OvenStatusIn(object):

	def calc_temp(self,num):
		return num*-1.65+808
	
	def __init__(self,ovenstr):
		data = dict([part.split(":") for part in ovenstr.decode("utf-8").split(";")])
		self.time = time.time()
		self.temp = self.calc_temp(int(data["TEMP"]))
		self.light = bool(int(data["L"]))
		self.top_big = bool(int(data["TB"])) 
		self.top_small = bool(int(data["TS"]))
		self.back = bool(int(data["BACK"]))
		self.bottom = bool(int(data["BOT"]))
		self.back_fan = bool(int(data["BF"]))
		self.door_fan = bool(int(data["DF"]))
	
	def __str__(self):
		return str(self.to_dict())

	def to_dict(self):
		data = {"time":self.time,
			"temp":self.temp,
			"light":self.light,
			"top_big":self.top_big,
			"top_small":self.top_small,
			"back":self.back,
			"back_fan":self.back_fan,
			"bottom":self.bottom,
			"door_fan":self.door_fan}
		return data
		

class OvenHeatingOut(object):
	def __init__(self,instatus=None):
		if instatus:
			self.top_big = instatus.top_big
			self.top_small = instatus.top_small
			self.back = instatus.back
			self.bottom = instatus.bottom
		else:
			self.top_big = False
			self.top_small = False
			self.bottom = False
			self.back = False
