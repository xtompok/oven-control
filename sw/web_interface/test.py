from simple_temperature import SimpleTemperature
from hysteresis_temperature import HysterTemperature
from oven_data import OvenStatusIn

ht = HysterTemperature(100)
os = OvenStatusIn(b"TEMP:490;L:1;BF:1;DF:1;TB:0;TS:0;BACK:0;BOT:0")


def step(temp_driver,oven_status,temp):
	oven_status.temp = temp
	spirals = temp_driver.get_heating(oven_status)
	print(f"temp: {temp}, spirals: {spirals}, temp_driver: {temp_driver}")

for temp in range(20,120):
	step(ht,os,temp)
for temp in range(120,95,-1):
	step(ht,os,temp)
for temp in range(95,105):
	step(ht,os,temp)
for temp in range(105,80,-1):
	step(ht,os,temp)


