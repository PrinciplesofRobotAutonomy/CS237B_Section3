#!/usr/bin/env python
import rospy
from std_msgs.msg import Int8

def gripper_publisher(pwm):
	rospy.loginfo("Why don't I see this")
	pub = rospy.Publisher('gripper_pose', Int8, queue_size = 10)
	rospy.init_node('gripper_publisher', anonymous = True)
	rate = rospy.Rate(10)
	while not rospy.is_shutdown():
		pub.publish(pwm)
		rate.sleep()

if __name__ == '__main__':
	try:
		while(1):
			key = getKey()
			gripper_publisher(key)
			print("")
	except:
		pass
