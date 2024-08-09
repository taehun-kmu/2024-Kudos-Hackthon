#!/usr/bin/env python

import rospy
from sensor_msgs.msg import Image
from geometry_msgs.msg import Twist
from cv_bridge import CvBridge
import cv2
import numpy as np

class LineTracerNode:
    def __init__(self):
        rospy.init_node('line_tracer_node')
        self.bridge = CvBridge()
        self.image_sub = rospy.Subscriber('/main_camera/image_raw', Image, self.image_callback)
        self.cmd_vel_pub = rospy.Publisher('/cmd_vel', Twist, queue_size=1)
        self.image_pub = rospy.Publisher('/lane_detection/output', Image, queue_size=1)
        self.twist = Twist()

        self.base_speed = 0.2
        self.max_angular_speed = 1.0
        self.lane_center_offset_threshold = 50
        self.rate = rospy.Rate(10)

    def image_callback(self, msg):
        cv_image = self.bridge.imgmsg_to_cv2(msg, desired_encoding='bgr8')
        output_image, lane_offset = self.process_image(cv_image)
        
        self.calculate_control(lane_offset)
        self.cmd_vel_pub.publish(self.twist)

        output_msg = self.bridge.cv2_to_imgmsg(output_image, encoding="bgr8")
        self.image_pub.publish(output_msg)

    def process_image(self, img):
        gray = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)
        blur = cv2.GaussianBlur(gray, (5, 5), 0)
        edges = cv2.Canny(blur, 50, 150)

        height, width = edges.shape
        mask = np.zeros_like(edges)
        polygon = np.array([[
            (0, height),
            (width, height),
            (width, height//2),
            (0, height//2),
        ]], np.int32)
        cv2.fillPoly(mask, polygon, 255)
        masked_edges = cv2.bitwise_and(edges, mask)

        lines = cv2.HoughLinesP(masked_edges, 1, np.pi / 180, 50, np.array([]), minLineLength=50, maxLineGap=200)

        line_image = np.zeros_like(img)
        lane_offset = 0

        if lines is not None:
            for line in lines:
                for x1, y1, x2, y2 in line:
                    cv2.line(line_image, (x1, y1), (x2, y2), (0, 255, 0), 5)
                    lane_offset = x1 + (x2 - x1) / 2 - width / 2

        result = cv2.addWeighted(img, 0.8, line_image, 1, 0)
        return result, lane_offset

    def calculate_control(self, lane_offset):
        angular_speed = -float(lane_offset) / 100.0
        
        self.twist.linear.x = self.base_speed
        self.twist.angular.z = max(-self.max_angular_speed, min(self.max_angular_speed, angular_speed))

    def run(self):
        rospy.spin()

if __name__ == '__main__':
    node = LineTracerNode()
    node.run()
