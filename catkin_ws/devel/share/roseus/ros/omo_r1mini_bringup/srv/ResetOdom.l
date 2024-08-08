;; Auto-generated. Do not edit!


(when (boundp 'omo_r1mini_bringup::ResetOdom)
  (if (not (find-package "OMO_R1MINI_BRINGUP"))
    (make-package "OMO_R1MINI_BRINGUP"))
  (shadow 'ResetOdom (find-package "OMO_R1MINI_BRINGUP")))
(unless (find-package "OMO_R1MINI_BRINGUP::RESETODOM")
  (make-package "OMO_R1MINI_BRINGUP::RESETODOM"))
(unless (find-package "OMO_R1MINI_BRINGUP::RESETODOMREQUEST")
  (make-package "OMO_R1MINI_BRINGUP::RESETODOMREQUEST"))
(unless (find-package "OMO_R1MINI_BRINGUP::RESETODOMRESPONSE")
  (make-package "OMO_R1MINI_BRINGUP::RESETODOMRESPONSE"))

(in-package "ROS")





(defclass omo_r1mini_bringup::ResetOdomRequest
  :super ros::object
  :slots (_x _y _theta ))

(defmethod omo_r1mini_bringup::ResetOdomRequest
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:theta __theta) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _theta (float __theta))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:theta
   (&optional __theta)
   (if __theta (setq _theta __theta)) _theta)
  (:serialization-length
   ()
   (+
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; float64 _theta
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _theta
       (sys::poke _theta (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _theta
     (setq _theta (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass omo_r1mini_bringup::ResetOdomResponse
  :super ros::object
  :slots ())

(defmethod omo_r1mini_bringup::ResetOdomResponse
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

(defclass omo_r1mini_bringup::ResetOdom
  :super ros::object
  :slots ())

(setf (get omo_r1mini_bringup::ResetOdom :md5sum-) "938fa65709584ad8e77d238529be13b8")
(setf (get omo_r1mini_bringup::ResetOdom :datatype-) "omo_r1mini_bringup/ResetOdom")
(setf (get omo_r1mini_bringup::ResetOdom :request) omo_r1mini_bringup::ResetOdomRequest)
(setf (get omo_r1mini_bringup::ResetOdom :response) omo_r1mini_bringup::ResetOdomResponse)

(defmethod omo_r1mini_bringup::ResetOdomRequest
  (:response () (instance omo_r1mini_bringup::ResetOdomResponse :init)))

(setf (get omo_r1mini_bringup::ResetOdomRequest :md5sum-) "938fa65709584ad8e77d238529be13b8")
(setf (get omo_r1mini_bringup::ResetOdomRequest :datatype-) "omo_r1mini_bringup/ResetOdomRequest")
(setf (get omo_r1mini_bringup::ResetOdomRequest :definition-)
      "float64 x
float64 y
float64 theta
---

")

(setf (get omo_r1mini_bringup::ResetOdomResponse :md5sum-) "938fa65709584ad8e77d238529be13b8")
(setf (get omo_r1mini_bringup::ResetOdomResponse :datatype-) "omo_r1mini_bringup/ResetOdomResponse")
(setf (get omo_r1mini_bringup::ResetOdomResponse :definition-)
      "float64 x
float64 y
float64 theta
---

")



(provide :omo_r1mini_bringup/ResetOdom "938fa65709584ad8e77d238529be13b8")


