; Auto-generated. Do not edit!


(cl:in-package omo_r1mini_simple_position_controller-msg)


;//! \htmlinclude VanillaPositionResult.msg.html

(cl:defclass <VanillaPositionResult> (roslisp-msg-protocol:ros-message)
  ((x_result
    :reader x_result
    :initarg :x_result
    :type cl:float
    :initform 0.0)
   (y_result
    :reader y_result
    :initarg :y_result
    :type cl:float
    :initform 0.0)
   (theta_result
    :reader theta_result
    :initarg :theta_result
    :type cl:float
    :initform 0.0))
)

(cl:defclass VanillaPositionResult (<VanillaPositionResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VanillaPositionResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VanillaPositionResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name omo_r1mini_simple_position_controller-msg:<VanillaPositionResult> is deprecated: use omo_r1mini_simple_position_controller-msg:VanillaPositionResult instead.")))

(cl:ensure-generic-function 'x_result-val :lambda-list '(m))
(cl:defmethod x_result-val ((m <VanillaPositionResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader omo_r1mini_simple_position_controller-msg:x_result-val is deprecated.  Use omo_r1mini_simple_position_controller-msg:x_result instead.")
  (x_result m))

(cl:ensure-generic-function 'y_result-val :lambda-list '(m))
(cl:defmethod y_result-val ((m <VanillaPositionResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader omo_r1mini_simple_position_controller-msg:y_result-val is deprecated.  Use omo_r1mini_simple_position_controller-msg:y_result instead.")
  (y_result m))

(cl:ensure-generic-function 'theta_result-val :lambda-list '(m))
(cl:defmethod theta_result-val ((m <VanillaPositionResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader omo_r1mini_simple_position_controller-msg:theta_result-val is deprecated.  Use omo_r1mini_simple_position_controller-msg:theta_result instead.")
  (theta_result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VanillaPositionResult>) ostream)
  "Serializes a message object of type '<VanillaPositionResult>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x_result))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y_result))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'theta_result))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VanillaPositionResult>) istream)
  "Deserializes a message object of type '<VanillaPositionResult>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x_result) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y_result) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'theta_result) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VanillaPositionResult>)))
  "Returns string type for a message object of type '<VanillaPositionResult>"
  "omo_r1mini_simple_position_controller/VanillaPositionResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VanillaPositionResult)))
  "Returns string type for a message object of type 'VanillaPositionResult"
  "omo_r1mini_simple_position_controller/VanillaPositionResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VanillaPositionResult>)))
  "Returns md5sum for a message object of type '<VanillaPositionResult>"
  "43f67436b0054f56d2e5b2339aa76e1f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VanillaPositionResult)))
  "Returns md5sum for a message object of type 'VanillaPositionResult"
  "43f67436b0054f56d2e5b2339aa76e1f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VanillaPositionResult>)))
  "Returns full string definition for message of type '<VanillaPositionResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#result definition~%float32 x_result~%float32 y_result~%float32 theta_result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VanillaPositionResult)))
  "Returns full string definition for message of type 'VanillaPositionResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#result definition~%float32 x_result~%float32 y_result~%float32 theta_result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VanillaPositionResult>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VanillaPositionResult>))
  "Converts a ROS message object to a list"
  (cl:list 'VanillaPositionResult
    (cl:cons ':x_result (x_result msg))
    (cl:cons ':y_result (y_result msg))
    (cl:cons ':theta_result (theta_result msg))
))
