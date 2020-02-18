#!/bin/bash

# Copy the gripper_subscriber script to the appropriate folder

mv gripper_subscriber.py ~/catkin_ws/src/asl_turtlebot/scripts/
chmod a+x ~/catkin_ws/src/asl_turtlebot/scripts/gripper_subscriber.py

# Unzip and install pigpio
tar xf pigpio.tar
cd PIGPIO/
make
sudo make install

# Enable pigpiod as a startup service
tar xf pigpiod.service.d.tar
sudo cp -r pigpiod.service.d /etc/systemd/system
sudo systemctl enable pigpiod
sudo systemctl start pigpiod
