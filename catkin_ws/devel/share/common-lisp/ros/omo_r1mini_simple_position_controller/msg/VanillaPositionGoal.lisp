; Auto-generated. Do not edit!


(cl:in-package omo_r1mini_simple_position_controller-msg)


;//! \htmlinclude VanillaPositionGoal.msg.html

(cl:defclass <VanillaPositionGoal> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0)
   (theta
    :reader theta
    :initarg :theta
    :type cl:float
    :initform 0.0))
)

(cl:defclass VanillaPositionGoal (<VanillaPositionGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VanillaPositionGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VanillaPositionGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name omo_r1mini_simple_position_controller-msg:<VanillaPositionGoal> is deprecated: use omo_r1mini_simple_position_controller-msg:VanillaPositionGoal instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <VanillaPositionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader omo_r1mini_simple_position_controller-msg:x-val is deprecated.  Use omo_r1mini_simple_position_controller-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <VanillaPositionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader omo_r1mini_simple_position_controller-msg:y-val is deprecated.  Use omo_r1mini_simple_position_controller-msg:y instead.")
  (y m))

(cl:ensure-generic-function 'theta-val :lambda-list '(m))
(cl:defmethod theta-val ((m <VanillaPositionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader omo_r1mini_simple_position_controller-msg:theta-val is deprecated.  Use omo_r1mini_simple_position_controller-msg:theta instead.")
  (theta m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VanillaPositionGoal>) ostream)
  "Serializes a message object of type '<VanillaPositionGoal>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'theta))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VanillaPositionGoal>) istream)
  "Deserializes a message object of type '<VanillaPositionGoal>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'theta) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VanillaPositionGoal>)))
  "Returns string type for a message object of type '<VanillaPositionGoal>"
  "omo_r1mini_simple_position_controller/VanillaPositionGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VanillaPositionGoal)))
  "Returns string type for a message object of type 'VanillaPositionGoal"
  "omo_r1mini_simple_position_controller/VanillaPositionGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VanillaPositionGoal>)))
  "Returns md5sum for a message object of type '<VanillaPositionGoal>"
  "a130bc60ee6513855dc62ea83fcc5b20")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VanillaPositionGoal)))
  "Returns md5sum for a message object of type 'VanillaPositionGoal"
  "a130bc60ee6513855dc62ea83fcc5b20")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VanillaPositionGoal>)))
  "Returns full string definition for message of type '<VanillaPositionGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#goal definition~%float32 x~%float32 y~%float32 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VanillaPositionGoal)))
  "Returns full string definition for message of type 'VanillaPositionGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#goal definition~%float32 x~%float32 y~%float32 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VanillaPositionGoal>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VanillaPositionGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'VanillaPositionGoal
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':theta (theta msg))
))
