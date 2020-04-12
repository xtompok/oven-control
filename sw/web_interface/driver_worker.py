#from serial.rfc2217 import Serial
from serial import Serial
import threading
import queue
import time
from oven_data import OvenStatusIn, Spirals
from simple_temperature import SimpleTemperature
from hysteresis_temperature import HysterTemperature
import paho.mqtt.client as mqtt



class DriverWorker(object):

	def __init__(self,port):
		super(DriverWorker,self).__init__()
		self.port = port
		self.ser = None
		self.set_temp = -100
		self.light = True
		self.spirals_enabled = Spirals(default=True)
		self.mqtt_prefix = "/oven"

		self.status = None


	def manage_door_fan(self):
		# Turn on at 50 deg C or higher
		if self.status.temp > 50 and not self.status.door_fan:
			self.ser.write(b"d")
		# Turn off at 45 deg C or lower
		if self.status.temp < 45 and self.status.door_fan:
			self.ser.write(b"d")
	
	def manage_light(self):
		if self.status.light != self.light:
			self.ser.write(b"l")

	#FIXME use only enabled spirals
	def manage_heating(self,heatout):
		status = self.status.spirals
		if status.top_big != heatout.top_big:
			self.ser.write(b"T")
		if status.top_small != heatout.top_small:
			self.ser.write(b"t")
		if status.back != heatout.back:
			self.ser.write(b"z")
		if status.bottom != heatout.bottom:
			self.ser.write(b"b")
	
	def on_connect(self,client,userdata,flags,rc):
		print("Connected to MQTT server")
		client.subscribe(self.mqtt_prefix+"/temp/set")
		client.subscribe(self.mqtt_prefix+"/enabled_elements/set")
		client.subscribe(self.mqtt_prefix+"/mode/set")
		client.subscribe(self.mqtt_prefix+"/profile/set")
		client.subscribe(self.mqtt_prefix+"/light/set")
	
	def on_message(self,client,userdata,msg):
		if msg.topic == self.mqtt_prefix+"/temp/set":
			self.set_temp = int(msg.payload)
		elif msg.topic == self.mqtt_prefix+"/eabled_elements/set":
			data = json.loads(msg.payload)
			spirals = Spirals.from_dict(data)
			self.spirals_enabled = spirals
		elif msg.topic == self.mqtt_prefix+"/light/set":
			self.light = bool(int(msg.payload))


	
	def run(self):
		self.ser = Serial(self.port,baudrate=115200)
		print("Port opened")
		for i in range(2):
			self.ser.readline()
		temp_alg = HysterTemperature(self.set_temp) 
		client = mqtt.Client()
		client.on_connect = self.on_connect
		client.on_message = self.on_message
		client.connect("localhost")


		while True:

			self.ser.reset_input_buffer()
			self.ser.write(b"k") # keepalive
			self.ser.flush()
			line = self.ser.readline().strip()[:-1]
			
			if "Safety" in line.decode("utf-8"):
				self.statusq.put("Safety power off, waking...")
				self.ser.write(b"k")
				self.ser.flush()
				continue
			try:
				status = OvenStatusIn(line)
			except ValueError:
				pass # TODO handle errors
			else:
				self.status = status

			self.status.publish(client,self.mqtt_prefix)
			client.publish(self.mqtt_prefix+"/set_temp",self.set_temp)
			self.spirals_enabled.publish(client,self.mqtt_prefix+"/spirals/enabled")

			self.manage_door_fan()
			self.manage_light()
			self.manage_heating(temp_alg.get_heating(self.status))	
			
			self.ser.flush()
				
			temp_alg.set_temp(self.set_temp)
			client.loop(timeout=1.0)
			time.sleep(0.5)
	

if __name__ == "__main__":
	worker = DriverWorker("/dev/ttyUSB0")
	worker.run()
