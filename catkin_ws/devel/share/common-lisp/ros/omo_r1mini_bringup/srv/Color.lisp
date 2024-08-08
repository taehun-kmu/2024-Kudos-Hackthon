; Auto-generated. Do not edit!


(cl:in-package omo_r1mini_bringup-srv)


;//! \htmlinclude Color-request.msg.html

(cl:defclass <Color-request> (roslisp-msg-protocol:ros-message)
  ((red
    :reader red
    :initarg :red
    :type cl:integer
    :initform 0)
   (green
    :reader green
    :initarg :green
    :type cl:integer
    :initform 0)
   (blue
    :reader blue
    :initarg :blue
    :type cl:integer
    :initform 0))
)

(cl:defclass Color-request (<Color-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Color-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Color-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name omo_r1mini_bringup-srv:<Color-request> is deprecated: use omo_r1mini_bringup-srv:Color-request instead.")))

(cl:ensure-generic-function 'red-val :lambda-list '(m))
(cl:defmethod red-val ((m <Color-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader omo_r1mini_bringup-srv:red-val is deprecated.  Use omo_r1mini_bringup-srv:red instead.")
  (red m))

(cl:ensure-generic-function 'green-val :lambda-list '(m))
(cl:defmethod green-val ((m <Color-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader omo_r1mini_bringup-srv:green-val is deprecated.  Use omo_r1mini_bringup-srv:green instead.")
  (green m))

(cl:ensure-generic-function 'blue-val :lambda-list '(m))
(cl:defmethod blue-val ((m <Color-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader omo_r1mini_bringup-srv:blue-val is deprecated.  Use omo_r1mini_bringup-srv:blue instead.")
  (blue m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Color-request>) ostream)
  "Serializes a message object of type '<Color-request>"
  (cl:let* ((signed (cl:slot-value msg 'red)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'green)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'blue)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Color-request>) istream)
  "Deserializes a message object of type '<Color-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'red) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'green) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'blue) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Color-request>)))
  "Returns string type for a service object of type '<Color-request>"
  "omo_r1mini_bringup/ColorRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Color-request)))
  "Returns string type for a service object of type 'Color-request"
  "omo_r1mini_bringup/ColorRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Color-request>)))
  "Returns md5sum for a message object of type '<Color-request>"
  "8b210d51c86d003e1192527182de7381")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Color-request)))
  "Returns md5sum for a message object of type 'Color-request"
  "8b210d51c86d003e1192527182de7381")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Color-request>)))
  "Returns full string definition for message of type '<Color-request>"
  (cl:format cl:nil "int64 red~%int64 green~%int64 blue~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Color-request)))
  "Returns full string definition for message of type 'Color-request"
  (cl:format cl:nil "int64 red~%int64 green~%int64 blue~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Color-request>))
  (cl:+ 0
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Color-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Color-request
    (cl:cons ':red (red msg))
    (cl:cons ':green (green msg))
    (cl:cons ':blue (blue msg))
))
;//! \htmlinclude Color-response.msg.html

(cl:defclass <Color-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass Color-response (<Color-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Color-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Color-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name omo_r1mini_bringup-srv:<Color-response> is deprecated: use omo_r1mini_bringup-srv:Color-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Color-response>) ostream)
  "Serializes a message object of type '<Color-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Color-response>) istream)
  "Deserializes a message object of type '<Color-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Color-response>)))
  "Returns string type for a service object of type '<Color-response>"
  "omo_r1mini_bringup/ColorResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Color-response)))
  "Returns string type for a service object of type 'Color-response"
  "omo_r1mini_bringup/ColorResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Color-response>)))
  "Returns md5sum for a message object of type '<Color-response>"
  "8b210d51c86d003e1192527182de7381")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Color-response)))
  "Returns md5sum for a message object of type 'Color-response"
  "8b210d51c86d003e1192527182de7381")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Color-response>)))
  "Returns full string definition for message of type '<Color-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Color-response)))
  "Returns full string definition for message of type 'Color-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Color-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Color-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Color-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Color)))
  'Color-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Color)))
  'Color-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Color)))
  "Returns string type for a service object of type '<Color>"
  "omo_r1mini_bringup/Color")