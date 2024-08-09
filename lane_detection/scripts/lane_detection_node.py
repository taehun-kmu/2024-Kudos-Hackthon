#!/usr/bin/env python
# -*- coding: utf-8 -*-

import rospy
from sensor_msgs.msg import Image
from geometry_msgs.msg import Twist
from cv_bridge import CvBridge
import cv2
import numpy as np

class LineTracerNode:
    def __init__(self):
        # ROS 노드 초기화
        rospy.init_node('line_tracer_node')
        
        # CvBridge 객체 생성 (ROS 이미지 메시지를 OpenCV 이미지로 변환)
        self.bridge = CvBridge()
        
        # /main_camera/image_raw 토픽을 구독하여 이미지 콜백 함수 호출
        self.image_sub = rospy.Subscriber('/main_camera/image_raw', Image, self.image_callback)
        
        # /cmd_vel 토픽으로 로봇의 속도 명령을 게시할 퍼블리셔
        self.cmd_vel_pub = rospy.Publisher('/cmd_vel', Twist, queue_size=1)
        
        # /lane_detection/output 토픽으로 검출된 이미지를 게시할 퍼블리셔
        self.image_pub = rospy.Publisher('/lane_detection/output', Image, queue_size=1)
        
        # Twist 메시지 초기화
        self.twist = Twist()

        # 로봇의 기본 선형 속도 및 최대 각속도 설정
        self.base_speed = 0.2
        self.max_angular_speed = 1.0
        
        # 차선 중심에서 벗어난 정도를 허용하는 픽셀 오프셋
        self.lane_center_offset_threshold = 50
        
        # ROS 루프 속도 설정 (10Hz)
        self.rate = rospy.Rate(10)

    def image_callback(self, msg):
        # ROS 이미지 메시지를 OpenCV 이미지로 변환
        cv_image = self.bridge.imgmsg_to_cv2(msg, desired_encoding='bgr8')
        
        # 이미지 처리 및 차선 오프셋 계산
        output_image, lane_offset = self.process_image(cv_image)

        # 차선 오프셋을 기반으로 로봇의 속도 계산
        self.calculate_control(lane_offset)
        
        # 계산된 속도를 /cmd_vel 토픽에 게시
        self.cmd_vel_pub.publish(self.twist)

        # 처리된 이미지를 ROS 이미지 메시지로 변환하여 /lane_detection/output 토픽에 게시
        output_msg = self.bridge.cv2_to_imgmsg(output_image, encoding="bgr8")
        self.image_pub.publish(output_msg)

    def process_image(self, img):
        # 이미지를 흑백으로 변환
        gray = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)
        
        # 가우시안 블러를 적용하여 노이즈 제거
        blur = cv2.GaussianBlur(gray, (5, 5), 0)
        
        # 캐니 엣지 검출을 통해 가장자리 검출
        edges = cv2.Canny(blur, 50, 150)

        # 이미지 크기 정보
        height, width = edges.shape
        
        # ROI (관심영역) 마스크 생성
        mask = np.zeros_like(edges)
        polygon = np.array([[
            (0, height),
            (width, height),
            (width, height // 2),
            (0, height // 2),
        ]], np.int32)
        cv2.fillPoly(mask, polygon, 255)
        
        # ROI와 엣지 이미지를 AND 연산하여 관심영역 내의 엣지만 남김
        masked_edges = cv2.bitwise_and(edges, mask)

        # 허프 변환을 통해 직선 검출
        lines = cv2.HoughLinesP(masked_edges, 1, np.pi / 180, 50, np.array([]), minLineLength=50, maxLineGap=200)

        # 검출된 선을 그릴 빈 이미지 생성
        line_image = np.zeros_like(img)
        
        # 차선 중심 오프셋 초기화
        lane_offset = 0

        # 검출된 선이 있으면 선을 그림
        if lines is not None:
            for line in lines:
                for x1, y1, x2, y2 in line:
                    cv2.line(line_image, (x1, y1), (x2, y2), (0, 255, 0), 5)
                    lane_offset = x1 + (x2 - x1) / 2 - width / 2  # 이미지 중심과 차선 중심 차이 계산

        # 원본 이미지와 검출된 선 이미지를 합성
        result = cv2.addWeighted(img, 0.8, line_image, 1, 0)
        return result, lane_offset

    def calculate_control(self, lane_offset):
        # 차선 중심에서 벗어난 정도에 따라 각속도를 조절
        angular_speed = -float(lane_offset) / 100.0  # lane_offset이 음수일 때 왼쪽으로 회전
        
        # 선형 속도와 각속도 설정
        self.twist.linear.x = self.base_speed
        self.twist.angular.z = max(-self.max_angular_speed, min(self.max_angular_speed, angular_speed))

    def run(self):
        # ROS 스핀: 콜백 함수들이 호출될 수 있도록 유지
        rospy.spin()

if __name__ == '__main__':
    # 노드 실행
    node = LineTracerNode()
    node.run()
