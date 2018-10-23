; Auto-generated. Do not edit!


(cl:in-package dynamixel_workbench_msgs-srv)


;//! \htmlinclude WheelCommand-request.msg.html

(cl:defclass <WheelCommand-request> (roslisp-msg-protocol:ros-message)
  ((vel1
    :reader vel1
    :initarg :vel1
    :type cl:float
    :initform 0.0)
   (vel2
    :reader vel2
    :initarg :vel2
    :type cl:float
    :initform 0.0)
   (vel3
    :reader vel3
    :initarg :vel3
    :type cl:float
    :initform 0.0)
   (vel4
    :reader vel4
    :initarg :vel4
    :type cl:float
    :initform 0.0)
   (vel5
    :reader vel5
    :initarg :vel5
    :type cl:float
    :initform 0.0)
   (vel6
    :reader vel6
    :initarg :vel6
    :type cl:float
    :initform 0.0))
)

(cl:defclass WheelCommand-request (<WheelCommand-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WheelCommand-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WheelCommand-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dynamixel_workbench_msgs-srv:<WheelCommand-request> is deprecated: use dynamixel_workbench_msgs-srv:WheelCommand-request instead.")))

(cl:ensure-generic-function 'vel1-val :lambda-list '(m))
(cl:defmethod vel1-val ((m <WheelCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dynamixel_workbench_msgs-srv:vel1-val is deprecated.  Use dynamixel_workbench_msgs-srv:vel1 instead.")
  (vel1 m))

(cl:ensure-generic-function 'vel2-val :lambda-list '(m))
(cl:defmethod vel2-val ((m <WheelCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dynamixel_workbench_msgs-srv:vel2-val is deprecated.  Use dynamixel_workbench_msgs-srv:vel2 instead.")
  (vel2 m))

(cl:ensure-generic-function 'vel3-val :lambda-list '(m))
(cl:defmethod vel3-val ((m <WheelCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dynamixel_workbench_msgs-srv:vel3-val is deprecated.  Use dynamixel_workbench_msgs-srv:vel3 instead.")
  (vel3 m))

(cl:ensure-generic-function 'vel4-val :lambda-list '(m))
(cl:defmethod vel4-val ((m <WheelCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dynamixel_workbench_msgs-srv:vel4-val is deprecated.  Use dynamixel_workbench_msgs-srv:vel4 instead.")
  (vel4 m))

(cl:ensure-generic-function 'vel5-val :lambda-list '(m))
(cl:defmethod vel5-val ((m <WheelCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dynamixel_workbench_msgs-srv:vel5-val is deprecated.  Use dynamixel_workbench_msgs-srv:vel5 instead.")
  (vel5 m))

(cl:ensure-generic-function 'vel6-val :lambda-list '(m))
(cl:defmethod vel6-val ((m <WheelCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dynamixel_workbench_msgs-srv:vel6-val is deprecated.  Use dynamixel_workbench_msgs-srv:vel6 instead.")
  (vel6 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WheelCommand-request>) ostream)
  "Serializes a message object of type '<WheelCommand-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'vel1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'vel2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'vel3))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'vel4))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'vel5))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'vel6))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WheelCommand-request>) istream)
  "Deserializes a message object of type '<WheelCommand-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vel1) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vel2) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vel3) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vel4) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vel5) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vel6) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WheelCommand-request>)))
  "Returns string type for a service object of type '<WheelCommand-request>"
  "dynamixel_workbench_msgs/WheelCommandRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WheelCommand-request)))
  "Returns string type for a service object of type 'WheelCommand-request"
  "dynamixel_workbench_msgs/WheelCommandRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WheelCommand-request>)))
  "Returns md5sum for a message object of type '<WheelCommand-request>"
  "baceffa34ff35ffa84b373eb230d842b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WheelCommand-request)))
  "Returns md5sum for a message object of type 'WheelCommand-request"
  "baceffa34ff35ffa84b373eb230d842b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WheelCommand-request>)))
  "Returns full string definition for message of type '<WheelCommand-request>"
  (cl:format cl:nil "~%~%float32 vel1~%float32 vel2~%float32 vel3~%float32 vel4~%float32 vel5~%float32 vel6~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WheelCommand-request)))
  "Returns full string definition for message of type 'WheelCommand-request"
  (cl:format cl:nil "~%~%float32 vel1~%float32 vel2~%float32 vel3~%float32 vel4~%float32 vel5~%float32 vel6~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WheelCommand-request>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WheelCommand-request>))
  "Converts a ROS message object to a list"
  (cl:list 'WheelCommand-request
    (cl:cons ':vel1 (vel1 msg))
    (cl:cons ':vel2 (vel2 msg))
    (cl:cons ':vel3 (vel3 msg))
    (cl:cons ':vel4 (vel4 msg))
    (cl:cons ':vel5 (vel5 msg))
    (cl:cons ':vel6 (vel6 msg))
))
;//! \htmlinclude WheelCommand-response.msg.html

(cl:defclass <WheelCommand-response> (roslisp-msg-protocol:ros-message)
  ((result1
    :reader result1
    :initarg :result1
    :type cl:boolean
    :initform cl:nil)
   (result2
    :reader result2
    :initarg :result2
    :type cl:boolean
    :initform cl:nil)
   (result3
    :reader result3
    :initarg :result3
    :type cl:boolean
    :initform cl:nil)
   (result4
    :reader result4
    :initarg :result4
    :type cl:boolean
    :initform cl:nil)
   (result5
    :reader result5
    :initarg :result5
    :type cl:boolean
    :initform cl:nil)
   (result6
    :reader result6
    :initarg :result6
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass WheelCommand-response (<WheelCommand-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WheelCommand-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WheelCommand-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dynamixel_workbench_msgs-srv:<WheelCommand-response> is deprecated: use dynamixel_workbench_msgs-srv:WheelCommand-response instead.")))

(cl:ensure-generic-function 'result1-val :lambda-list '(m))
(cl:defmethod result1-val ((m <WheelCommand-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dynamixel_workbench_msgs-srv:result1-val is deprecated.  Use dynamixel_workbench_msgs-srv:result1 instead.")
  (result1 m))

(cl:ensure-generic-function 'result2-val :lambda-list '(m))
(cl:defmethod result2-val ((m <WheelCommand-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dynamixel_workbench_msgs-srv:result2-val is deprecated.  Use dynamixel_workbench_msgs-srv:result2 instead.")
  (result2 m))

(cl:ensure-generic-function 'result3-val :lambda-list '(m))
(cl:defmethod result3-val ((m <WheelCommand-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dynamixel_workbench_msgs-srv:result3-val is deprecated.  Use dynamixel_workbench_msgs-srv:result3 instead.")
  (result3 m))

(cl:ensure-generic-function 'result4-val :lambda-list '(m))
(cl:defmethod result4-val ((m <WheelCommand-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dynamixel_workbench_msgs-srv:result4-val is deprecated.  Use dynamixel_workbench_msgs-srv:result4 instead.")
  (result4 m))

(cl:ensure-generic-function 'result5-val :lambda-list '(m))
(cl:defmethod result5-val ((m <WheelCommand-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dynamixel_workbench_msgs-srv:result5-val is deprecated.  Use dynamixel_workbench_msgs-srv:result5 instead.")
  (result5 m))

(cl:ensure-generic-function 'result6-val :lambda-list '(m))
(cl:defmethod result6-val ((m <WheelCommand-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dynamixel_workbench_msgs-srv:result6-val is deprecated.  Use dynamixel_workbench_msgs-srv:result6 instead.")
  (result6 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WheelCommand-response>) ostream)
  "Serializes a message object of type '<WheelCommand-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result1) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result2) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result3) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result4) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result5) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result6) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WheelCommand-response>) istream)
  "Deserializes a message object of type '<WheelCommand-response>"
    (cl:setf (cl:slot-value msg 'result1) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'result2) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'result3) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'result4) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'result5) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'result6) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WheelCommand-response>)))
  "Returns string type for a service object of type '<WheelCommand-response>"
  "dynamixel_workbench_msgs/WheelCommandResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WheelCommand-response)))
  "Returns string type for a service object of type 'WheelCommand-response"
  "dynamixel_workbench_msgs/WheelCommandResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WheelCommand-response>)))
  "Returns md5sum for a message object of type '<WheelCommand-response>"
  "baceffa34ff35ffa84b373eb230d842b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WheelCommand-response)))
  "Returns md5sum for a message object of type 'WheelCommand-response"
  "baceffa34ff35ffa84b373eb230d842b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WheelCommand-response>)))
  "Returns full string definition for message of type '<WheelCommand-response>"
  (cl:format cl:nil "bool result1~%bool result2~%bool result3~%bool result4~%bool result5~%bool result6~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WheelCommand-response)))
  "Returns full string definition for message of type 'WheelCommand-response"
  (cl:format cl:nil "bool result1~%bool result2~%bool result3~%bool result4~%bool result5~%bool result6~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WheelCommand-response>))
  (cl:+ 0
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WheelCommand-response>))
  "Converts a ROS message object to a list"
  (cl:list 'WheelCommand-response
    (cl:cons ':result1 (result1 msg))
    (cl:cons ':result2 (result2 msg))
    (cl:cons ':result3 (result3 msg))
    (cl:cons ':result4 (result4 msg))
    (cl:cons ':result5 (result5 msg))
    (cl:cons ':result6 (result6 msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'WheelCommand)))
  'WheelCommand-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'WheelCommand)))
  'WheelCommand-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WheelCommand)))
  "Returns string type for a service object of type '<WheelCommand>"
  "dynamixel_workbench_msgs/WheelCommand")