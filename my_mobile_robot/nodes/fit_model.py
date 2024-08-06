import glob
import numpy as np
import cv2

from tensorflow.keras import layers, models
import tensorflow as tf

print('==> Search GPU and set memory limit')
gpus = tf.config.experimental.list_physical_devices('GPU')
if gpus:
  try:
    tf.config.experimental.set_virtual_device_configuration(gpus[0], [tf.config.experimental.VirtualDeviceConfiguration(memory_limit=1024)])
  except RuntimeError as e:
    print(e)

print('==> Start data processing')
file_list = glob.glob('./img/*.jpg')

data_path = []
y_label = []

for each in file_list:
	data_path.append(each)
	file_name = each.split('/')[-1]
	y_label.append([float(file_name.split(' ')[0]), float(file_name.split(' ')[1])])

data = []

for i in range(len(data_path)):
	img_array = cv2.imread(data_path[i], cv2.IMREAD_GRAYSCALE)
	img_array_resized = cv2.resize(img_array, (28,28))
	data.append(img_array_resized)

data = np.array(data)
y_label = np.array(y_label)

print("== Feature data shape : ", data.shape)
print("== Label data shape : ", y_label.shape)

print('==> Done! data processing')

model = models.Sequential([
                           layers.Conv2D(32, kernel_size=(5,5), strides=(1,1),
                                         padding='same', activation='relu',
                                         input_shape=(28,28,1)),
                           layers.MaxPooling2D(pool_size=(2,2), strides=(2,2)),
                           layers.Conv2D(64, (2,2), activation='relu', padding='same'),
                           layers.MaxPooling2D(pool_size=(2,2)),
                           layers.Dropout(0.25),
                           layers.Flatten(),
                           layers.Dense(1000, activation='relu'),
                           layers.Dense(2, activation='linear')
])

model.compile(optimizer='adam',
              loss='mse',
              metrics=['mse'])

data = data.reshape(len(data), data.shape[1], data.shape[2], 1)



hist = model.fit(data, y_label, epochs=20, batch_size=1)

model.save('mobile_robot.h5')
