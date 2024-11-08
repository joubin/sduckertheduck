#!/bin/bash

set -e 
apt install -y python3-pip python3 git
cd /root
git clone https://github.com/joubin/duckertheduck.git
sleep 1
cp /root/duckertheduck/sound_sensor.service /etc/systemd/system/sound_sensor.service
cd /root/duckertheduck/db_sensor/
pip3 install --break-system-packages -r requirements.txt
python3 main.py
