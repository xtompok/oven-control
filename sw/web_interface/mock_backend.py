import argparse
import json
import time
from dataclasses import dataclass

import paho.mqtt.client as mqtt

from hysteresis_temperature import HysterTemperature
from oven_data import Spirals


@dataclass
class TemperatureStatus:
	temp: float


class MockBackend:
	def __init__(self, host: str, prefix: str, tick: float):
		self.host = host
		self.prefix = prefix
		self.tick = tick

		self.temp = 24.0
		self.set_temp = -100
		self.light = True
		self.spirals_enabled = Spirals(default=True)
		self.spirals_status = Spirals()
		self.back_fan = False
		self.door_fan = False

		self.temp_alg = HysterTemperature(self.set_temp)
		self.client = mqtt.Client()
		self.client.on_connect = self.on_connect
		self.client.on_message = self.on_message

	def on_connect(self, client, userdata, flags, rc):
		print("Mock backend connected to MQTT")
		client.subscribe(self.prefix + "/temp/set")
		client.subscribe(self.prefix + "/enabled_elements/set")
		client.subscribe(self.prefix + "/light/set")

	def on_message(self, client, userdata, msg):
		if msg.topic == self.prefix + "/temp/set":
			self.set_temp = int(msg.payload)
			return

		if msg.topic == self.prefix + "/enabled_elements/set":
			data = json.loads(msg.payload.decode("utf-8"))
			self.spirals_enabled = Spirals.from_dict(data)
			return

		if msg.topic == self.prefix + "/light/set":
			self.light = bool(int(msg.payload))

	def _effective_spirals(self) -> Spirals:
		return self.temp_alg.get_heating(TemperatureStatus(self.temp), self.spirals_enabled)

	def _update_fans(self):
		if self.temp > 50:
			self.door_fan = True
		elif self.temp < 45:
			self.door_fan = False

		self.back_fan = self.spirals_status.back

	def _simulate_temperature(self):
		on_count = int(self.spirals_status.top_big) + int(self.spirals_status.top_small) + int(self.spirals_status.back) + int(self.spirals_status.bottom)
		ambient = 24.0

		if on_count > 0:
			heating_rate = 0.6 + 0.5 * on_count
			self.temp += heating_rate * self.tick
			return

		cooling_rate = 0.22
		self.temp += (ambient - self.temp) * cooling_rate * self.tick

	def _publish_state(self):
		self.client.publish(self.prefix + "/temp", round(self.temp, 1))
		self.client.publish(self.prefix + "/set_temp", self.set_temp)
		self.client.publish(self.prefix + "/light", int(self.light))

		self.client.publish(self.prefix + "/spirals/top_big", int(self.spirals_status.top_big))
		self.client.publish(self.prefix + "/spirals/top_small", int(self.spirals_status.top_small))
		self.client.publish(self.prefix + "/spirals/back", int(self.spirals_status.back))
		self.client.publish(self.prefix + "/spirals/bottom", int(self.spirals_status.bottom))

		self.client.publish(self.prefix + "/spirals/enabled/top_big", int(self.spirals_enabled.top_big))
		self.client.publish(self.prefix + "/spirals/enabled/top_small", int(self.spirals_enabled.top_small))
		self.client.publish(self.prefix + "/spirals/enabled/back", int(self.spirals_enabled.back))
		self.client.publish(self.prefix + "/spirals/enabled/bottom", int(self.spirals_enabled.bottom))

		self.client.publish(self.prefix + "/back_fan", int(self.back_fan))
		self.client.publish(self.prefix + "/door_fan", int(self.door_fan))

	def run(self):
		self.client.connect(self.host)
		self.client.loop_start()

		while True:
			self.temp_alg.set_temp(self.set_temp)
			self.spirals_status = self._effective_spirals()
			self._update_fans()
			self._simulate_temperature()
			self._publish_state()
			time.sleep(self.tick)


def parse_args():
	parser = argparse.ArgumentParser(description="Mock MQTT backend for oven UI")
	parser.add_argument("--host", default="localhost", help="MQTT broker host")
	parser.add_argument("--prefix", default="/oven", help="MQTT topic prefix")
	parser.add_argument("--tick", type=float, default=0.5, help="Simulation tick in seconds")
	return parser.parse_args()


if __name__ == "__main__":
	args = parse_args()
	backend = MockBackend(host=args.host, prefix=args.prefix, tick=args.tick)
	backend.run()