;; Auto-generated. Do not edit!


(when (boundp 'omo_r1mini_bringup::Color)
  (if (not (find-package "OMO_R1MINI_BRINGUP"))
    (make-package "OMO_R1MINI_BRINGUP"))
  (shadow 'Color (find-package "OMO_R1MINI_BRINGUP")))
(unless (find-package "OMO_R1MINI_BRINGUP::COLOR")
  (make-package "OMO_R1MINI_BRINGUP::COLOR"))
(unless (find-package "OMO_R1MINI_BRINGUP::COLORREQUEST")
  (make-package "OMO_R1MINI_BRINGUP::COLORREQUEST"))
(unless (find-package "OMO_R1MINI_BRINGUP::COLORRESPONSE")
  (make-package "OMO_R1MINI_BRINGUP::COLORRESPONSE"))

(in-package "ROS")





(defclass omo_r1mini_bringup::ColorRequest
  :super ros::object
  :slots (_red _green _blue ))

(defmethod omo_r1mini_bringup::ColorRequest
  (:init
   (&key
    ((:red __red) 0)
    ((:green __green) 0)
    ((:blue __blue) 0)
    )
   (send-super :init)
   (setq _red (round __red))
   (setq _green (round __green))
   (setq _blue (round __blue))
   self)
  (:red
   (&optional __red)
   (if __red (setq _red __red)) _red)
  (:green
   (&optional __green)
   (if __green (setq _green __green)) _green)
  (:blue
   (&optional __blue)
   (if __blue (setq _blue __blue)) _blue)
  (:serialization-length
   ()
   (+
    ;; int64 _red
    8
    ;; int64 _green
    8
    ;; int64 _blue
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _red
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _red (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _red) (= (length (_red . bv)) 2)) ;; bignum
              (write-long (ash (elt (_red . bv) 0) 0) s)
              (write-long (ash (elt (_red . bv) 1) -1) s))
             ((and (class _red) (= (length (_red . bv)) 1)) ;; big1
              (write-long (elt (_red . bv) 0) s)
              (write-long (if (>= _red 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _red s)(write-long (if (>= _red 0) 0 #xffffffff) s)))
     ;; int64 _green
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _green (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _green) (= (length (_green . bv)) 2)) ;; bignum
              (write-long (ash (elt (_green . bv) 0) 0) s)
              (write-long (ash (elt (_green . bv) 1) -1) s))
             ((and (class _green) (= (length (_green . bv)) 1)) ;; big1
              (write-long (elt (_green . bv) 0) s)
              (write-long (if (>= _green 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _green s)(write-long (if (>= _green 0) 0 #xffffffff) s)))
     ;; int64 _blue
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _blue (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _blue) (= (length (_blue . bv)) 2)) ;; bignum
              (write-long (ash (elt (_blue . bv) 0) 0) s)
              (write-long (ash (elt (_blue . bv) 1) -1) s))
             ((and (class _blue) (= (length (_blue . bv)) 1)) ;; big1
              (write-long (elt (_blue . bv) 0) s)
              (write-long (if (>= _blue 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _blue s)(write-long (if (>= _blue 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _red
#+(or :alpha :irix6 :x86_64)
      (setf _red (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _red (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _green
#+(or :alpha :irix6 :x86_64)
      (setf _green (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _green (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _blue
#+(or :alpha :irix6 :x86_64)
      (setf _blue (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _blue (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass omo_r1mini_bringup::ColorResponse
  :super ros::object
  :slots ())

(defmethod omo_r1mini_bringup::ColorResponse
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

(defclass omo_r1mini_bringup::Color
  :super ros::object
  :slots ())

(setf (get omo_r1mini_bringup::Color :md5sum-) "8b210d51c86d003e1192527182de7381")
(setf (get omo_r1mini_bringup::Color :datatype-) "omo_r1mini_bringup/Color")
(setf (get omo_r1mini_bringup::Color :request) omo_r1mini_bringup::ColorRequest)
(setf (get omo_r1mini_bringup::Color :response) omo_r1mini_bringup::ColorResponse)

(defmethod omo_r1mini_bringup::ColorRequest
  (:response () (instance omo_r1mini_bringup::ColorResponse :init)))

(setf (get omo_r1mini_bringup::ColorRequest :md5sum-) "8b210d51c86d003e1192527182de7381")
(setf (get omo_r1mini_bringup::ColorRequest :datatype-) "omo_r1mini_bringup/ColorRequest")
(setf (get omo_r1mini_bringup::ColorRequest :definition-)
      "int64 red
int64 green
int64 blue
---

")

(setf (get omo_r1mini_bringup::ColorResponse :md5sum-) "8b210d51c86d003e1192527182de7381")
(setf (get omo_r1mini_bringup::ColorResponse :datatype-) "omo_r1mini_bringup/ColorResponse")
(setf (get omo_r1mini_bringup::ColorResponse :definition-)
      "int64 red
int64 green
int64 blue
---

")



(provide :omo_r1mini_bringup/Color "8b210d51c86d003e1192527182de7381")


