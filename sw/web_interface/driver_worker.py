import serial
import threading
import queue
import time


class DriverWorker(threading.Thread):

	def __init__(self,port,tempq,statusq):
		super(DriverWorker,self).__init__()
		self.port = port
		self.tempq = tempq
		self.statusq = statusq
		self.stoprequest = threading.Event()

	def calc_temp(self,num):
		return num*-1.65+808
	
	def run(self):
		ser = serial.Serial(self.port,baudrate=115200)
		print("Port opened")
		for i in range(2):
			ser.readline()
		target = self.tempq.get()
		while not self.stoprequest.isSet():
			ser.reset_input_buffer()
			ser.write(b"k") # keepalive
			ser.flush()
			line = ser.readline().strip()[:-1]
			if "Safety" in line.decode("utf-8"):
				self.statusq.put("Safety power off, waking...")
				ser.write(b"k")
				ser.flush()
				continue
			data = dict([part.split(":") for part in line.decode("utf-8").split(";")])
			data["time"] = time.time()
			data["temp"] = self.calc_temp(int(data["TEMP"]))
			self.statusq.put(data)
			if data["DF"]=="0":
				ser.write(b"d")
			if data["L"]=="0":
				ser.write(b"l")
			if data["temp"] > target:
				self.statusq.put("Turning off")
				if data["TB"] == "1":
					ser.write(b"T")
				if data["TS"] == "1":
					ser.write(b"t")
				if data["BOT"] == "1":
					ser.write(b"b")
			if data["temp"] < (target - 10):
				self.statusq.put("Turning on")
				if data["TB"] == "0":
					ser.write(b"T")
				if data["TS"] == "0":
					ser.write(b"t")
				if data["BOT"] == "0":
					ser.write(b"b")
			ser.flush()
			if not self.tempq.empty():
				target = self.tempq.get()
			time.sleep(1)
		ser.close()
	
	def join(self,timeout=None):
		self.stoprequest.set()
		super(DriverWorker,self).join(timeout)
	 

