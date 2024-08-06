#!/usr/bin/env python

import sys
import rospy
import serial
import io
from time import sleep
from my_mobile_robot.srv import Color, ColorResponse
from geometry_msgs.msg import Twist

def led_color_service_handle(req):
	command = "$cCOLOR," + str(req.red) + ',' + str(req.green) + ',' + str(req.blue)
	ser.write(command + "\r\n")
	return ColorResponse()

def sub_cmd_vel(cmd_vel_msg):
	lin_vel_x = cmd_vel_msg.linear.x * 1000
	ang_vel_z = cmd_vel_msg.angular.z * 1000

	command = '$cVW, {:.0f},{:.0f}'.format(lin_vel_x, ang_vel_z)

	print command

	ser.write(command + "\r\n")

rospy.init_node('my_mobile_robot')
rospy.Service('set_led_color', Color, led_color_service_handle)
rospy.Subscriber("cmd_vel", Twist, sub_cmd_vel, queue_size = 1)

ser = serial.Serial('/dev/ttyTHS1',115200)
ser_io = io.TextIOWrapper(io.BufferedRWPair(ser, ser, 1), newline= '\r', line_buffering = True)

rospy.spin() 