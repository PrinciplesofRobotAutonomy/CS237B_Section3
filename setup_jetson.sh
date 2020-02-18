#!/bin/bash

# Copy the gripper_publisher script to the appropriate folder

mv gripper_publisher.py ~/catkin_ws/src/asl_turtlebot/scripts/

# Copy the camera_transform_relay to the appropriate folder

mv camera_transform_relay.py ~/catkin_ws/src/asl_turtlebot/scripts/

# Make the python files executable
chmod a+x ~/catkin_ws/src/asl_turtlebot/scripts/gripper_publisher.py
chmod a+x ~/catkin_ws/src/asl_turtlebot/scripts/camera_transform_relay.py

# Copy the new launch file to the appropriate folder

mv turtlebot3_bringup_jetson_pi_cs237b.launch ~/catkin_ws/src/asl_turtlebot/launch/

