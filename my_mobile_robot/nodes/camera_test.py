#!/usr/bin/env python

import sys
import rospy
import serial
import io
from time import sleep
from geometry_msgs.msg import Twist

import cv2

num = 0
class calcurator(object):
    def add_one(self):
        global num
        num += 1

def gstreamer_pipeline(
    capture_width=320,
    capture_height=180,
    display_width=320, #1280,
    display_height=180, #720,
    framerate=60,
    flip_method=0,
):
    return (
        "nvarguscamerasrc ! "
        "video/x-raw(memory:NVMM), "
        "width=(int)%d, height=(int)%d, "
        "format=(string)NV12, framerate=(fraction)%d/1 ! "
        "nvvidconv flip-method=%d ! "
        "video/x-raw, width=(int)%d, height=(int)%d, format=(string)BGRx ! "
        "videoconvert ! "
        "video/x-raw, format=(string)BGR ! appsink"
        % (
            capture_width,
            capture_height,
            framerate,
            flip_method,
            display_width,
            display_height,
        )
    )

def show_camera():
    # To flip the image, modify the flip_method parameter (0 and 2 are the most common)
    

    print(gstreamer_pipeline(flip_method=0))
    cap = cv2.VideoCapture(gstreamer_pipeline(flip_method=0), cv2.CAP_GSTREAMER)

    if cap.isOpened():

        def sub_cmd_vel(cmd_vel_msg):
            
            ret_val, img = cap.read()
            img = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)
            img = cv2.rectangle(img, (0,0), (320,80), (255,255,255), -1 )

            lin_vel_x = cmd_vel_msg.linear.x
            ang_vel_z = cmd_vel_msg.angular.z

            command = [lin_vel_x, ang_vel_z]

            print command

            #cv2.imshow("CSI Camera", img)

            keyCode = cv2.waitKey(400) & 0xFF

            # Stop the program on the ESC key
            #if keyCode == 27
            #    break

            #if keyCode == ord('s'):
            	#img_count += 1
            	#save_file_name = './img/' + format(img_count, '04') + '.jpg'
            	#print(format(img_count, '04'))
            	#cv2.imwrite(save_file_name, img)
            A = calcurator()
            A.add_one()
            img_count = num

            save_file_name = './img/' + format(command[0]) + ' ' + format(command[1]) + ' ' + format(img_count) + '.jpg'
            print(format(img_count, '04'))
            cv2.imwrite(save_file_name, img)
            
        rospy.init_node('my_mobile_robot')
        rospy.Subscriber("cmd_vel", Twist, sub_cmd_vel, queue_size = 1)

        ser = serial.Serial('/dev/ttyTHS1',115200)
        ser_io = io.TextIOWrapper(io.BufferedRWPair(ser, ser, 1), newline= '\r', line_buffering = True)

        rospy.spin() 

        cap.release()
        cv2.destroyAllWindows()
    else:
        print("Unable to open camera")


if __name__ == "__main__":
    show_camera()
