#!/usr/bin/python3


import threading
import queue
import time
import toml
from flask import Flask, render_template, request
from driver_worker import DriverWorker


CONF_FILE = "config.toml"

config = toml.load(CONF_FILE)

log = open(config["log"],"a")
tempq = queue.Queue()
statusq = queue.Queue()
driver = DriverWorker(config["port"],tempq,statusq)


app = Flask(__name__)
app.debug = True
app.config['SECRET_KEY'] = 'kokoko'

data = None
temp = -100

def get_last_data():
	global data
	while not statusq.empty():
		msg = statusq.get()
		if type(msg) == str:
			print(msg)
		elif type(msg) == dict:
			data = msg

@app.route('/')
def index():
	global temp
	temp = request.args.get('temp')
	if temp:
		try:
			temp = int(temp)
		except:
			print("Invalid temp {}".format(temp))
		tempq.put(temp)
	get_last_data()
	return render_template('index.html',data=data,temp=temp)

if __name__ == "__main__":
	tempq.put(-100)
	driver.start()
	app.run(threaded=True,processes=1,use_reloader=False)
