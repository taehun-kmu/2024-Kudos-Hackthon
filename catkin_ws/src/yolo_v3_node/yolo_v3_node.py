#!/usr/bin/env python3

import rospy
from std_msgs.msg import String
import subprocess

def yolo_v3_detection():
    # Initialize the ROS node
    rospy.init_node('yolo_v3_node', anonymous=True)
    
    # Create a publisher for the 'yolo_results' topic
    pub = rospy.Publisher('yolo_results', String, queue_size=10)
    
    # Set the loop rate to 1 Hz
    rate = rospy.Rate(1)
    
    while not rospy.is_shutdown():
        try:
            # Run YOLOv3 detector command
            result = subprocess.run(
    ['/home/jetson/darknet', 'detector', 'test', 'cfg/coco.data', 'cfg/yolov3.cfg', 'yolov3.weights', 'data/dog.jpg'],
    stdout=subprocess.PIPE,
    stderr=subprocess.PIPE
)

            
            # Decode the command output
            output = result.stdout.decode('utf-8')
            
            # Log and publish the result
            rospy.loginfo(output)
            pub.publish(output)
        
        except subprocess.CalledProcessError as e:
            rospy.logerr(f"Error executing YOLOv3 command: {e}")
        
        except Exception as e:
            rospy.logerr(f"Unexpected error: {e}")
        
        # Sleep to maintain the loop rate
        rate.sleep()

if __name__ == '__main__':
    try:
        yolo_v3_detection()
    except rospy.ROSInterruptException:
        pass




