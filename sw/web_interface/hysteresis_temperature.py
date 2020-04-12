from oven_data import OvenStatusIn, Spirals 
from dataclasses import dataclass

class HysterTemperature(object):
	INFINITY = 10000
	
	@dataclass
	class Setpoint:
		tempdiff: float
		spirals: Spirals

	def __init__(self,temp):
		self.direction_up = True
		self.temp = temp
		self.hysteresis = 2
		self.memindex = -1
		self.setpoints = (
				self.Setpoint(-15,Spirals.from_dict({"top_big":True,"top_small":True,"bottom":True})),
				self.Setpoint(0,Spirals.from_dict({"top_big":False,"top_small":True,"bottom":True})),
				self.Setpoint(self.INFINITY,Spirals()),
				)
	def __str__(self):
		return f"direction_up: {self.direction_up}, temp: {self.temp}, hysteresis: {self.hysteresis}, memindex: {self.memindex}"

	def get_setpoint_index(self,tempdiff):
		if self.setpoints[-1].tempdiff < tempdiff:
			raise ValueError("Temp diff too high!")
		index = 0
		while self.setpoints[index].tempdiff < tempdiff:
			index += 1
		return index
		
	
	def set_temp(self,temperature):
		self.temp = temperature
	
	def get_heating(self,data):
		tempdiff = data.temp - self.temp

		if tempdiff > self.setpoints[-1].tempdiff:
			return Spirals()

		if self.direction_up:
			index = self.get_setpoint_index(tempdiff-self.hysteresis)
		else:
			index = self.get_setpoint_index(tempdiff+self.hysteresis)

		if self.memindex < index:
			self.direction_up = True
		elif self.memindex > index:
			self.direction_up = False

		if self.direction_up:
			index = self.get_setpoint_index(tempdiff-self.hysteresis)
		else:
			index = self.get_setpoint_index(tempdiff+self.hysteresis)

		self.memindex = index
		return self.setpoints[index].spirals
