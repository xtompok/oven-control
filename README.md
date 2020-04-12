# Oven control software
Boards and software used to control electric oven


# Installation

 - burn raspbian to SD card
 - create ssh file on boot partition of the SD card
 - `sudo raspi-config`
	- set hostname
	- set password
	- set locale
	- set timezone
	- set read-only
 - `sudo apt update`
 - `sudo apt install vim git python3-venv mosquitto nginx`
 - clone this repo
 - in `oven-control/sw/web_interface`:
	- `python3 -m venv venv`
	- `. venv/bin/activate/`
	- `pip install -r requirements.txt`
 - `mkdir -p .config/systemd/user/`
 - `cp oven_control.service .config/systemd/user/` 
 - `sudo loginctl enable-linger pi`
 - edit `/etc/mosquitto/mosquitto.conf`:

  log_dest stderr

  listener 1883
  protocol mqtt

  listener 9001
  protocol websockets

 - `sudo systemctl restart mosquitto`
 - edit `/etc/nginx/sites-available/default`
	- `root /home/pi/oven-control/sw/web_interface/static/`
 - edit `/etc/nginx/nginx.conf`:
	- add to `http` directive `charset UTF-8;`
 - `sudo systemctl restart nginx`
