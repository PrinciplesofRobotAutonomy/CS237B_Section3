#!/bin/bash

# Copy the gripper_subscriber script to the appropriate folder

mv gripper_subscriber.py ~/catkin_ws/src/asl_turtlebot/scripts/

# Unzip and install pigpio
tar xf pigpio.tar
cd PIGPIO/
make
sudo make install

# Enable pigpiod as a startup service
sudo systemctl enable pigpiod
sudo systemctl start pigpiod
