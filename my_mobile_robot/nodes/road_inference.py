import numpy as np
import cv2

from tensorflow.keras import layers, models
import tensorflow as tf

model = models.load_model('mobile_robot.h5')

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

            #cv2.imshow("CSI Camera", img)

            img_array_resized = np.array(cv2.resize(img, (50,50)))

            test_image = img_array_resized.reshape(1, 50, 50, 1)

            print(model.predict(test_image))

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