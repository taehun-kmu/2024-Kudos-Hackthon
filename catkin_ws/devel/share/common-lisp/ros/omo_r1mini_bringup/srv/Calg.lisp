; Auto-generated. Do not edit!


(cl:in-package omo_r1mini_bringup-srv)


;//! \htmlinclude Calg-request.msg.html

(cl:defclass <Calg-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass Calg-request (<Calg-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Calg-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Calg-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name omo_r1mini_bringup-srv:<Calg-request> is deprecated: use omo_r1mini_bringup-srv:Calg-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Calg-request>) ostream)
  "Serializes a message object of type '<Calg-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Calg-request>) istream)
  "Deserializes a message object of type '<Calg-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Calg-request>)))
  "Returns string type for a service object of type '<Calg-request>"
  "omo_r1mini_bringup/CalgRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Calg-request)))
  "Returns string type for a service object of type 'Calg-request"
  "omo_r1mini_bringup/CalgRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Calg-request>)))
  "Returns md5sum for a message object of type '<Calg-request>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Calg-request)))
  "Returns md5sum for a message object of type 'Calg-request"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Calg-request>)))
  "Returns full string definition for message of type '<Calg-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Calg-request)))
  "Returns full string definition for message of type 'Calg-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Calg-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Calg-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Calg-request
))
;//! \htmlinclude Calg-response.msg.html

(cl:defclass <Calg-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass Calg-response (<Calg-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Calg-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Calg-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name omo_r1mini_bringup-srv:<Calg-response> is deprecated: use omo_r1mini_bringup-srv:Calg-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Calg-response>) ostream)
  "Serializes a message object of type '<Calg-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Calg-response>) istream)
  "Deserializes a message object of type '<Calg-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Calg-response>)))
  "Returns string type for a service object of type '<Calg-response>"
  "omo_r1mini_bringup/CalgResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Calg-response)))
  "Returns string type for a service object of type 'Calg-response"
  "omo_r1mini_bringup/CalgResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Calg-response>)))
  "Returns md5sum for a message object of type '<Calg-response>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Calg-response)))
  "Returns md5sum for a message object of type 'Calg-response"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Calg-response>)))
  "Returns full string definition for message of type '<Calg-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Calg-response)))
  "Returns full string definition for message of type 'Calg-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Calg-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Calg-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Calg-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Calg)))
  'Calg-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Calg)))
  'Calg-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Calg)))
  "Returns string type for a service object of type '<Calg>"
  "omo_r1mini_bringup/Calg")