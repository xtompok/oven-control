#!/usr/bin/python3

import sys
import serial
import time


ser = serial.Serial(sys.argv[1],baudrate=115200)
target = int(sys.argv[2])

for i in range(2):
	ser.readline()

while True:
	ser.reset_input_buffer()
	ser.readline()
	line = ser.readline().strip()[:-1]
	data = dict([part.split(":") for part in line.decode("utf-8").split(";")])
	print(data)
	if data["DF"]=="0":
		ser.write(b"d")
	if data["L"]=="0":
		ser.write(b"l")
	temp = int(data["TEMP"])*-1.65+808
	print("Temp: {}".format(temp))
	if temp > target:
		print("Turning off")
		if data["TB"] == "1":
			ser.write(b"T\n")
		if data["TS"] == "1":
			ser.write(b"t\n")
		if data["BOT"] == "1":
			ser.write(b"b")
	if temp < (target - 10):
		print("Turning on")
		if data["TB"] == "0":
			ser.write(b"T\n")
		if data["TS"] == "0":
			ser.write(b"t\n")
		if data["BOT"] == "0":
			ser.write(b"b")
	ser.flush()
	time.sleep(1)

