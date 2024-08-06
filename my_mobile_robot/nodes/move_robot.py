import numpy as np
import cv2
import serial
import io

from tensorflow.keras import layers, models
import tensorflow as tf

model = models.load_model('mobile_robot.h5')
ser = serial.Serial('/dev/ttyTHS1',115200)
ser_io = io.TextIOWrapper(io.BufferedRWPair(ser, ser, 1), newline='\r', line_buffering=True)

scale_factor = 1

print('==> Search GPU and set memory limit')
gpus = tf.config.experimental.list_physical_devices('GPU')
if gpus:
  try:
    tf.config.experimental.set_virtual_device_configuration(gpus[0], [tf.config.experimental.VirtualDeviceConfiguration(memory_limit=1024)])
  except RuntimeError as e:
    print(e)

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

def road_detection():
    # To flip the image, modify the flip_method parameter (0 and 2 are the most common)
    img_count = 0 

    print(gstreamer_pipeline(flip_method=0))
    cap = cv2.VideoCapture(gstreamer_pipeline(flip_method=0), cv2.CAP_GSTREAMER)

    if cap.isOpened():

        while True: 
            ret_val, img = cap.read()
            img = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)
            img = cv2.rectangle(img, (0,0), (320,80), (255,255,255), -1 )

            #cv2.imshow("CSI Camera", img)

            img_array_resized = np.array(cv2.resize(img, (28,28)))

            test_image = img_array_resized.reshape(1, 28, 28, 1)

            cmd_raw = model.predict(test_image)[0]
            cmd_raw = cmd_raw*scale_factor*1000

            command = '$cVW, {:.0f},{:.0f}\r\n'.format(cmd_raw[0], cmd_raw[1])
            ser.write(command.encode())

            print(command)

            keyCode = cv2.waitKey(50) & 0xFF

            # Stop the program on the ESC key
            if keyCode == 27:
                break

        cap.release()
        cv2.destroyAllWindows()
    else:
        print("Unable to open camera")


if __name__ == "__main__":
    road_detection()
