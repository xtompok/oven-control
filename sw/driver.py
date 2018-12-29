#!/usr/bin/python3

import sys
import serial
import time


LOG_FILE = "temp.log"

def calc_temp(num):
	return num*-1.65+808



log = open(LOG_FILE,"a")

ser = serial.Serial(sys.argv[1],baudrate=115200)
target = int(sys.argv[2])

for i in range(2):
	ser.readline()

while True:
	ser.reset_input_buffer()
	ser.write(b"k") # keepalive
	ser.flush()
	line = ser.readline().strip()[:-1]
	if "Safety" in line.decode("utf-8"):
		print("Safety power off, waking...")
		ser.write(b"k")
		ser.flush()
		continue
	data = dict([part.split(":") for part in line.decode("utf-8").split(";")])
	data["time"] = time.time()
	data["temp"] = calc_temp(int(data["TEMP"]))
	print(data)
	print(data,file=log)
	if data["DF"]=="0":
		ser.write(b"d")
	if data["L"]=="0":
		ser.write(b"l")
	if data["temp"] > target:
		print("Turning off")
		if data["TB"] == "1":
			ser.write(b"T")
		if data["TS"] == "1":
			ser.write(b"t")
		if data["BOT"] == "1":
			ser.write(b"b")
	if data["temp"] < (target - 10):
		print("Turning on")
		if data["TB"] == "0":
			ser.write(b"T")
		if data["TS"] == "0":
			ser.write(b"t")
		if data["BOT"] == "0":
			ser.write(b"b")
	ser.flush()
	log.flush()
	time.sleep(1)

