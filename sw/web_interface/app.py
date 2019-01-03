#!/usr/bin/python3


import threading
import queue
import time
import toml
import json
from flask import Flask, render_template, request
from driver_worker import DriverWorker
from oven_data import OvenStatusIn, OvenHeatingOut 


CONF_FILE = "config.toml"

config = toml.load(CONF_FILE)

log = open(config["log"],"a")
tempq = queue.Queue()
statusq = queue.Queue()
lightq = queue.Queue()
driver = DriverWorker(config["port"],tempq,statusq,lightq)


app = Flask(__name__)
app.debug = True
app.config['SECRET_KEY'] = 'kokoko'

data = None
temp = -100
light = True

def get_last_data():
	global data
	while not statusq.empty():
		msg = statusq.get()
		if type(msg) == str:
			print(msg)
		elif type(msg) == OvenStatusIn:		
			log.write(str(msg)+"\n")
			data = msg
			print(data)

@app.route('/')
def index():
	global temp
	
	new_temp = request.args.get('temp')
	if temp:
		try:
			new_temp = int(new_temp)
			temp = new_temp
			tempq.put(temp)
		except:
			print("Invalid temp {}".format(new_temp))
	
	light = request.args.get('light')
	if light == "1":
		lightq.put(True)
	elif light == "0":
		lightq.put(False)


	get_last_data()
	return render_template('index.html',data=data,temp=temp)

if __name__ == "__main__":
	tempq.put(-100)
	driver.start()
	app.run(threaded=True,processes=1,use_reloader=False,host='0.0.0.0')
