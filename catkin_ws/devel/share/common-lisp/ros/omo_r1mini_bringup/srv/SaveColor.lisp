; Auto-generated. Do not edit!


(cl:in-package omo_r1mini_bringup-srv)


;//! \htmlinclude SaveColor-request.msg.html

(cl:defclass <SaveColor-request> (roslisp-msg-protocol:ros-message)
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

(cl:defclass SaveColor-request (<SaveColor-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SaveColor-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SaveColor-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name omo_r1mini_bringup-srv:<SaveColor-request> is deprecated: use omo_r1mini_bringup-srv:SaveColor-request instead.")))

(cl:ensure-generic-function 'red-val :lambda-list '(m))
(cl:defmethod red-val ((m <SaveColor-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader omo_r1mini_bringup-srv:red-val is deprecated.  Use omo_r1mini_bringup-srv:red instead.")
  (red m))

(cl:ensure-generic-function 'green-val :lambda-list '(m))
(cl:defmethod green-val ((m <SaveColor-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader omo_r1mini_bringup-srv:green-val is deprecated.  Use omo_r1mini_bringup-srv:green instead.")
  (green m))

(cl:ensure-generic-function 'blue-val :lambda-list '(m))
(cl:defmethod blue-val ((m <SaveColor-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader omo_r1mini_bringup-srv:blue-val is deprecated.  Use omo_r1mini_bringup-srv:blue instead.")
  (blue m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SaveColor-request>) ostream)
  "Serializes a message object of type '<SaveColor-request>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SaveColor-request>) istream)
  "Deserializes a message object of type '<SaveColor-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SaveColor-request>)))
  "Returns string type for a service object of type '<SaveColor-request>"
  "omo_r1mini_bringup/SaveColorRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SaveColor-request)))
  "Returns string type for a service object of type 'SaveColor-request"
  "omo_r1mini_bringup/SaveColorRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SaveColor-request>)))
  "Returns md5sum for a message object of type '<SaveColor-request>"
  "8b210d51c86d003e1192527182de7381")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SaveColor-request)))
  "Returns md5sum for a message object of type 'SaveColor-request"
  "8b210d51c86d003e1192527182de7381")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SaveColor-request>)))
  "Returns full string definition for message of type '<SaveColor-request>"
  (cl:format cl:nil "int64 red~%int64 green~%int64 blue~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SaveColor-request)))
  "Returns full string definition for message of type 'SaveColor-request"
  (cl:format cl:nil "int64 red~%int64 green~%int64 blue~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SaveColor-request>))
  (cl:+ 0
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SaveColor-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SaveColor-request
    (cl:cons ':red (red msg))
    (cl:cons ':green (green msg))
    (cl:cons ':blue (blue msg))
))
;//! \htmlinclude SaveColor-response.msg.html

(cl:defclass <SaveColor-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SaveColor-response (<SaveColor-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SaveColor-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SaveColor-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name omo_r1mini_bringup-srv:<SaveColor-response> is deprecated: use omo_r1mini_bringup-srv:SaveColor-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SaveColor-response>) ostream)
  "Serializes a message object of type '<SaveColor-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SaveColor-response>) istream)
  "Deserializes a message object of type '<SaveColor-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SaveColor-response>)))
  "Returns string type for a service object of type '<SaveColor-response>"
  "omo_r1mini_bringup/SaveColorResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SaveColor-response)))
  "Returns string type for a service object of type 'SaveColor-response"
  "omo_r1mini_bringup/SaveColorResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SaveColor-response>)))
  "Returns md5sum for a message object of type '<SaveColor-response>"
  "8b210d51c86d003e1192527182de7381")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SaveColor-response)))
  "Returns md5sum for a message object of type 'SaveColor-response"
  "8b210d51c86d003e1192527182de7381")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SaveColor-response>)))
  "Returns full string definition for message of type '<SaveColor-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SaveColor-response)))
  "Returns full string definition for message of type 'SaveColor-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SaveColor-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SaveColor-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SaveColor-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SaveColor)))
  'SaveColor-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SaveColor)))
  'SaveColor-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SaveColor)))
  "Returns string type for a service object of type '<SaveColor>"
  "omo_r1mini_bringup/SaveColor")