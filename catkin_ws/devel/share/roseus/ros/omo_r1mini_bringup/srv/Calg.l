;; Auto-generated. Do not edit!


(when (boundp 'omo_r1mini_bringup::Calg)
  (if (not (find-package "OMO_R1MINI_BRINGUP"))
    (make-package "OMO_R1MINI_BRINGUP"))
  (shadow 'Calg (find-package "OMO_R1MINI_BRINGUP")))
(unless (find-package "OMO_R1MINI_BRINGUP::CALG")
  (make-package "OMO_R1MINI_BRINGUP::CALG"))
(unless (find-package "OMO_R1MINI_BRINGUP::CALGREQUEST")
  (make-package "OMO_R1MINI_BRINGUP::CALGREQUEST"))
(unless (find-package "OMO_R1MINI_BRINGUP::CALGRESPONSE")
  (make-package "OMO_R1MINI_BRINGUP::CALGRESPONSE"))

(in-package "ROS")





(defclass omo_r1mini_bringup::CalgRequest
  :super ros::object
  :slots ())

(defmethod omo_r1mini_bringup::CalgRequest
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

(defclass omo_r1mini_bringup::CalgResponse
  :super ros::object
  :slots ())

(defmethod omo_r1mini_bringup::CalgResponse
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

(defclass omo_r1mini_bringup::Calg
  :super ros::object
  :slots ())

(setf (get omo_r1mini_bringup::Calg :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get omo_r1mini_bringup::Calg :datatype-) "omo_r1mini_bringup/Calg")
(setf (get omo_r1mini_bringup::Calg :request) omo_r1mini_bringup::CalgRequest)
(setf (get omo_r1mini_bringup::Calg :response) omo_r1mini_bringup::CalgResponse)

(defmethod omo_r1mini_bringup::CalgRequest
  (:response () (instance omo_r1mini_bringup::CalgResponse :init)))

(setf (get omo_r1mini_bringup::CalgRequest :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get omo_r1mini_bringup::CalgRequest :datatype-) "omo_r1mini_bringup/CalgRequest")
(setf (get omo_r1mini_bringup::CalgRequest :definition-)
      "---
")

(setf (get omo_r1mini_bringup::CalgResponse :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get omo_r1mini_bringup::CalgResponse :datatype-) "omo_r1mini_bringup/CalgResponse")
(setf (get omo_r1mini_bringup::CalgResponse :definition-)
      "---
")



(provide :omo_r1mini_bringup/Calg "d41d8cd98f00b204e9800998ecf8427e")


