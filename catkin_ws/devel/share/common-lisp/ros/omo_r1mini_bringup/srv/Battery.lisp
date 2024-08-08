; Auto-generated. Do not edit!


(cl:in-package omo_r1mini_bringup-srv)


;//! \htmlinclude Battery-request.msg.html

(cl:defclass <Battery-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass Battery-request (<Battery-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Battery-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Battery-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name omo_r1mini_bringup-srv:<Battery-request> is deprecated: use omo_r1mini_bringup-srv:Battery-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Battery-request>) ostream)
  "Serializes a message object of type '<Battery-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Battery-request>) istream)
  "Deserializes a message object of type '<Battery-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Battery-request>)))
  "Returns string type for a service object of type '<Battery-request>"
  "omo_r1mini_bringup/BatteryRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Battery-request)))
  "Returns string type for a service object of type 'Battery-request"
  "omo_r1mini_bringup/BatteryRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Battery-request>)))
  "Returns md5sum for a message object of type '<Battery-request>"
  "9d9c08bbb8192da6b3949691563ecb91")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Battery-request)))
  "Returns md5sum for a message object of type 'Battery-request"
  "9d9c08bbb8192da6b3949691563ecb91")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Battery-request>)))
  "Returns full string definition for message of type '<Battery-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Battery-request)))
  "Returns full string definition for message of type 'Battery-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Battery-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Battery-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Battery-request
))
;//! \htmlinclude Battery-response.msg.html

(cl:defclass <Battery-response> (roslisp-msg-protocol:ros-message)
  ((volt
    :reader volt
    :initarg :volt
    :type cl:float
    :initform 0.0)
   (SOC
    :reader SOC
    :initarg :SOC
    :type cl:float
    :initform 0.0)
   (current
    :reader current
    :initarg :current
    :type cl:float
    :initform 0.0))
)

(cl:defclass Battery-response (<Battery-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Battery-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Battery-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name omo_r1mini_bringup-srv:<Battery-response> is deprecated: use omo_r1mini_bringup-srv:Battery-response instead.")))

(cl:ensure-generic-function 'volt-val :lambda-list '(m))
(cl:defmethod volt-val ((m <Battery-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader omo_r1mini_bringup-srv:volt-val is deprecated.  Use omo_r1mini_bringup-srv:volt instead.")
  (volt m))

(cl:ensure-generic-function 'SOC-val :lambda-list '(m))
(cl:defmethod SOC-val ((m <Battery-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader omo_r1mini_bringup-srv:SOC-val is deprecated.  Use omo_r1mini_bringup-srv:SOC instead.")
  (SOC m))

(cl:ensure-generic-function 'current-val :lambda-list '(m))
(cl:defmethod current-val ((m <Battery-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader omo_r1mini_bringup-srv:current-val is deprecated.  Use omo_r1mini_bringup-srv:current instead.")
  (current m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Battery-response>) ostream)
  "Serializes a message object of type '<Battery-response>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'volt))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'SOC))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'current))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Battery-response>) istream)
  "Deserializes a message object of type '<Battery-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'volt) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'SOC) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'current) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Battery-response>)))
  "Returns string type for a service object of type '<Battery-response>"
  "omo_r1mini_bringup/BatteryResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Battery-response)))
  "Returns string type for a service object of type 'Battery-response"
  "omo_r1mini_bringup/BatteryResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Battery-response>)))
  "Returns md5sum for a message object of type '<Battery-response>"
  "9d9c08bbb8192da6b3949691563ecb91")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Battery-response)))
  "Returns md5sum for a message object of type 'Battery-response"
  "9d9c08bbb8192da6b3949691563ecb91")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Battery-response>)))
  "Returns full string definition for message of type '<Battery-response>"
  (cl:format cl:nil "float64 volt~%float64 SOC~%float64 current~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Battery-response)))
  "Returns full string definition for message of type 'Battery-response"
  (cl:format cl:nil "float64 volt~%float64 SOC~%float64 current~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Battery-response>))
  (cl:+ 0
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Battery-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Battery-response
    (cl:cons ':volt (volt msg))
    (cl:cons ':SOC (SOC msg))
    (cl:cons ':current (current msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Battery)))
  'Battery-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Battery)))
  'Battery-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Battery)))
  "Returns string type for a service object of type '<Battery>"
  "omo_r1mini_bringup/Battery")