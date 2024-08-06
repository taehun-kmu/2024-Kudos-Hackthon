#!/usr/bin/env python

import serial
import rospy
from time import sleep
import io

ser = serial.Serial('/dev/ttyTHS1', 115200)
ser_io = io.TextIOWrapper(io.BufferedRWPair(ser, ser, 1) ,
	newline = '\r', line_buffering = True)

sleep(0.1)
ser.write("$cCOLOR, 200,30,30\r\n")
sleep(0.1)
print("Change the colors of robot!!")