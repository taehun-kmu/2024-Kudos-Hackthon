#!/usr/bin/env python

import rospy
from sensor_msgs.msg import Joy
from geometry_msgs.msg import Twist

class JoystickTeleop:
    def __init__(self):
        rospy.init_node('joystick_teleop')
        self.sub_joy = rospy.Subscriber('joy', Joy, self.joy_callback)
        self.pub_cmd_vel = rospy.Publisher('cmd_vel', Twist, queue_size=10)
        self.scale_linear = 0.2  # 선속도 스케일
        self.scale_angular = 0.5  # 각속도 스케일

	self.omo_packet_halder = PacketHandler()

    def joy_callback(self, joy_msg):
        l_vel = joy_msg.axes[0] * MAX_VELOCITY
	r_vel = joy_msg.axes[1] * MAX_VELOCITY

	self.omo_packet_handler.set_wheel_velocity(l_vel, r_vel)

    def run(self):
        rospy.spin()

if __name__ == '__main__':
    teleop = JoystickTeleop()
    teleop.run()
