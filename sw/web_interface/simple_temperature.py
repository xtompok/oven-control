from oven_data import OvenStatusIn, Spirals 

class SimpleTemperature(object):
	def __init__(self, temp):
		self.temp = temp
	
	def set_temp(self,temperature):
		self.temp = temperature
	
	def get_heating(self,data):	 
		out = Spirals()
		if data.temp > self.temp:
			return out
		if data.temp < (self.temp - 15):
			out.top_big = True
			out.top_small = True
			out.bottom = True
			return out
		if data.temp < (self.temp - 5):
			out.top_small = True
			out.bottom = True
			return out
		return out
