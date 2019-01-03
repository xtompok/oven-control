import serial
import threading
import queue
import time
from oven_data import OvenStatusIn, OvenHeatingOut 
from simple_temperature import SimpleTemperature



class DriverWorker(threading.Thread):

	def __init__(self,port,tempq,statusq,lightq):
		super(DriverWorker,self).__init__()
		self.port = port
		self.ser = None
		self.tempq = tempq
		self.statusq = statusq
		self.lightq = lightq
		self.stoprequest = threading.Event()
		self.status = None
		self.light = True


	def toggle_door_fan(self):
		# Turn on at 50 deg C or higher
		if self.status.temp > 50 and self.status.door_fan == "0":
			self.ser.write(b"d")
		# Turn off at 50 deg C or lower
		if self.status.temp < 50 and self.status.door_fan == "1":
			self.ser.write(b"d")
	
	def toggle_light(self):
		while not self.lightq.empty():
			self.light = self.lightq.get()
		if self.status.light != self.light:
			self.ser.write(b"l")

	def toggle_heating(self,heatout):
		if self.status.top_big != heatout.top_big:
			self.ser.write(b"T")
		if self.status.top_small != heatout.top_small:
			self.ser.write(b"t")
		if self.status.back != heatout.back:
			self.ser.write(b"z")
		if self.status.bottom != heatout.bottom:
			self.ser.write(b"b")
	
	def run(self):
		self.ser = serial.Serial(self.port,baudrate=115200)
		print("Port opened")
		for i in range(2):
			self.ser.readline()
		temp_alg = SimpleTemperature() 
		temp_alg.set_temp(self.tempq.get())

		while not self.stoprequest.isSet():

			self.ser.reset_input_buffer()
			self.ser.write(b"k") # keepalive
			self.ser.flush()
			line = self.ser.readline().strip()[:-1]
			
			if "Safety" in line.decode("utf-8"):
				self.statusq.put("Safety power off, waking...")
				self.ser.write(b"k")
				self.ser.flush()
				continue
			
			self.status = OvenStatusIn(line)
			self.statusq.put(self.status)
			self.toggle_door_fan()
			self.toggle_light()
			
			self.toggle_heating(temp_alg.get_heating(self.status))	
			self.ser.flush()
			if not self.tempq.empty():
				temp_alg.set_temp(self.tempq.get())
			time.sleep(1)
		self.ser.close()
	
	def join(self,timeout=None):
		self.stoprequest.set()
		super(DriverWorker,self).join(timeout)
	 

