from oven_data import OvenStatusIn, Spirals 

class SimpleTemperature(object):
	def __init__(self, temp):
		self.temp = temp
	
	def set_temp(self,temperature):
		self.temp = temperature
	
	def get_heating(self,data,enabled_spirals=None):	 
		out = Spirals()
		if data.temp > self.temp:
			return out
		if data.temp < (self.temp - 15):
			out.top_big = True
			out.top_small = True
			out.bottom = True
			return out if enabled_spirals is None else out.limited_by(enabled_spirals)
		if data.temp < (self.temp - 5):
			out.top_small = True
			out.bottom = True
			return out if enabled_spirals is None else out.limited_by(enabled_spirals)
		return out if enabled_spirals is None else out.limited_by(enabled_spirals)
