;; Auto-generated. Do not edit!


(when (boundp 'omo_r1mini_bringup::Battery)
  (if (not (find-package "OMO_R1MINI_BRINGUP"))
    (make-package "OMO_R1MINI_BRINGUP"))
  (shadow 'Battery (find-package "OMO_R1MINI_BRINGUP")))
(unless (find-package "OMO_R1MINI_BRINGUP::BATTERY")
  (make-package "OMO_R1MINI_BRINGUP::BATTERY"))
(unless (find-package "OMO_R1MINI_BRINGUP::BATTERYREQUEST")
  (make-package "OMO_R1MINI_BRINGUP::BATTERYREQUEST"))
(unless (find-package "OMO_R1MINI_BRINGUP::BATTERYRESPONSE")
  (make-package "OMO_R1MINI_BRINGUP::BATTERYRESPONSE"))

(in-package "ROS")





(defclass omo_r1mini_bringup::BatteryRequest
  :super ros::object
  :slots ())

(defmethod omo_r1mini_bringup::BatteryRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass omo_r1mini_bringup::BatteryResponse
  :super ros::object
  :slots (_volt _SOC _current ))

(defmethod omo_r1mini_bringup::BatteryResponse
  (:init
   (&key
    ((:volt __volt) 0.0)
    ((:SOC __SOC) 0.0)
    ((:current __current) 0.0)
    )
   (send-super :init)
   (setq _volt (float __volt))
   (setq _SOC (float __SOC))
   (setq _current (float __current))
   self)
  (:volt
   (&optional __volt)
   (if __volt (setq _volt __volt)) _volt)
  (:SOC
   (&optional __SOC)
   (if __SOC (setq _SOC __SOC)) _SOC)
  (:current
   (&optional __current)
   (if __current (setq _current __current)) _current)
  (:serialization-length
   ()
   (+
    ;; float64 _volt
    8
    ;; float64 _SOC
    8
    ;; float64 _current
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _volt
       (sys::poke _volt (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _SOC
       (sys::poke _SOC (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _current
       (sys::poke _current (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _volt
     (setq _volt (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _SOC
     (setq _SOC (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _current
     (setq _current (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass omo_r1mini_bringup::Battery
  :super ros::object
  :slots ())

(setf (get omo_r1mini_bringup::Battery :md5sum-) "9d9c08bbb8192da6b3949691563ecb91")
(setf (get omo_r1mini_bringup::Battery :datatype-) "omo_r1mini_bringup/Battery")
(setf (get omo_r1mini_bringup::Battery :request) omo_r1mini_bringup::BatteryRequest)
(setf (get omo_r1mini_bringup::Battery :response) omo_r1mini_bringup::BatteryResponse)

(defmethod omo_r1mini_bringup::BatteryRequest
  (:response () (instance omo_r1mini_bringup::BatteryResponse :init)))

(setf (get omo_r1mini_bringup::BatteryRequest :md5sum-) "9d9c08bbb8192da6b3949691563ecb91")
(setf (get omo_r1mini_bringup::BatteryRequest :datatype-) "omo_r1mini_bringup/BatteryRequest")
(setf (get omo_r1mini_bringup::BatteryRequest :definition-)
      "---
float64 volt
float64 SOC
float64 current
")

(setf (get omo_r1mini_bringup::BatteryResponse :md5sum-) "9d9c08bbb8192da6b3949691563ecb91")
(setf (get omo_r1mini_bringup::BatteryResponse :datatype-) "omo_r1mini_bringup/BatteryResponse")
(setf (get omo_r1mini_bringup::BatteryResponse :definition-)
      "---
float64 volt
float64 SOC
float64 current
")



(provide :omo_r1mini_bringup/Battery "9d9c08bbb8192da6b3949691563ecb91")


