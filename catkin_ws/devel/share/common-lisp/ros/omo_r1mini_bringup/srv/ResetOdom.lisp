; Auto-generated. Do not edit!


(cl:in-package omo_r1mini_bringup-srv)


;//! \htmlinclude ResetOdom-request.msg.html

(cl:defclass <ResetOdom-request> (roslisp-msg-protocol:ros-message)
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

(cl:defclass ResetOdom-request (<ResetOdom-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ResetOdom-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ResetOdom-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name omo_r1mini_bringup-srv:<ResetOdom-request> is deprecated: use omo_r1mini_bringup-srv:ResetOdom-request instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <ResetOdom-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader omo_r1mini_bringup-srv:x-val is deprecated.  Use omo_r1mini_bringup-srv:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <ResetOdom-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader omo_r1mini_bringup-srv:y-val is deprecated.  Use omo_r1mini_bringup-srv:y instead.")
  (y m))

(cl:ensure-generic-function 'theta-val :lambda-list '(m))
(cl:defmethod theta-val ((m <ResetOdom-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader omo_r1mini_bringup-srv:theta-val is deprecated.  Use omo_r1mini_bringup-srv:theta instead.")
  (theta m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ResetOdom-request>) ostream)
  "Serializes a message object of type '<ResetOdom-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'theta))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ResetOdom-request>) istream)
  "Deserializes a message object of type '<ResetOdom-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'theta) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ResetOdom-request>)))
  "Returns string type for a service object of type '<ResetOdom-request>"
  "omo_r1mini_bringup/ResetOdomRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ResetOdom-request)))
  "Returns string type for a service object of type 'ResetOdom-request"
  "omo_r1mini_bringup/ResetOdomRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ResetOdom-request>)))
  "Returns md5sum for a message object of type '<ResetOdom-request>"
  "938fa65709584ad8e77d238529be13b8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ResetOdom-request)))
  "Returns md5sum for a message object of type 'ResetOdom-request"
  "938fa65709584ad8e77d238529be13b8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ResetOdom-request>)))
  "Returns full string definition for message of type '<ResetOdom-request>"
  (cl:format cl:nil "float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ResetOdom-request)))
  "Returns full string definition for message of type 'ResetOdom-request"
  (cl:format cl:nil "float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ResetOdom-request>))
  (cl:+ 0
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ResetOdom-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ResetOdom-request
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':theta (theta msg))
))
;//! \htmlinclude ResetOdom-response.msg.html

(cl:defclass <ResetOdom-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass ResetOdom-response (<ResetOdom-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ResetOdom-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ResetOdom-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name omo_r1mini_bringup-srv:<ResetOdom-response> is deprecated: use omo_r1mini_bringup-srv:ResetOdom-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ResetOdom-response>) ostream)
  "Serializes a message object of type '<ResetOdom-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ResetOdom-response>) istream)
  "Deserializes a message object of type '<ResetOdom-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ResetOdom-response>)))
  "Returns string type for a service object of type '<ResetOdom-response>"
  "omo_r1mini_bringup/ResetOdomResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ResetOdom-response)))
  "Returns string type for a service object of type 'ResetOdom-response"
  "omo_r1mini_bringup/ResetOdomResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ResetOdom-response>)))
  "Returns md5sum for a message object of type '<ResetOdom-response>"
  "938fa65709584ad8e77d238529be13b8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ResetOdom-response)))
  "Returns md5sum for a message object of type 'ResetOdom-response"
  "938fa65709584ad8e77d238529be13b8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ResetOdom-response>)))
  "Returns full string definition for message of type '<ResetOdom-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ResetOdom-response)))
  "Returns full string definition for message of type 'ResetOdom-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ResetOdom-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ResetOdom-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ResetOdom-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ResetOdom)))
  'ResetOdom-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ResetOdom)))
  'ResetOdom-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ResetOdom)))
  "Returns string type for a service object of type '<ResetOdom>"
  "omo_r1mini_bringup/ResetOdom")