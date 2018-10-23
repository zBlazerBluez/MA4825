; Auto-generated. Do not edit!


(cl:in-package dynamixel_workbench_msgs-srv)


;//! \htmlinclude Input2Val-request.msg.html

(cl:defclass <Input2Val-request> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:fixnum
    :initform 0)
   (radian
    :reader radian
    :initarg :radian
    :type cl:float
    :initform 0.0)
   (speed
    :reader speed
    :initarg :speed
    :type cl:float
    :initform 0.0))
)

(cl:defclass Input2Val-request (<Input2Val-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Input2Val-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Input2Val-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dynamixel_workbench_msgs-srv:<Input2Val-request> is deprecated: use dynamixel_workbench_msgs-srv:Input2Val-request instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <Input2Val-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dynamixel_workbench_msgs-srv:id-val is deprecated.  Use dynamixel_workbench_msgs-srv:id instead.")
  (id m))

(cl:ensure-generic-function 'radian-val :lambda-list '(m))
(cl:defmethod radian-val ((m <Input2Val-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dynamixel_workbench_msgs-srv:radian-val is deprecated.  Use dynamixel_workbench_msgs-srv:radian instead.")
  (radian m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <Input2Val-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dynamixel_workbench_msgs-srv:speed-val is deprecated.  Use dynamixel_workbench_msgs-srv:speed instead.")
  (speed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Input2Val-request>) ostream)
  "Serializes a message object of type '<Input2Val-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'radian))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Input2Val-request>) istream)
  "Deserializes a message object of type '<Input2Val-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'radian) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Input2Val-request>)))
  "Returns string type for a service object of type '<Input2Val-request>"
  "dynamixel_workbench_msgs/Input2ValRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Input2Val-request)))
  "Returns string type for a service object of type 'Input2Val-request"
  "dynamixel_workbench_msgs/Input2ValRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Input2Val-request>)))
  "Returns md5sum for a message object of type '<Input2Val-request>"
  "a3b31596b7fcac5dd211a0ad0eb13680")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Input2Val-request)))
  "Returns md5sum for a message object of type 'Input2Val-request"
  "a3b31596b7fcac5dd211a0ad0eb13680")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Input2Val-request>)))
  "Returns full string definition for message of type '<Input2Val-request>"
  (cl:format cl:nil "~%~%uint8 id~%float32 radian~%float32 speed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Input2Val-request)))
  "Returns full string definition for message of type 'Input2Val-request"
  (cl:format cl:nil "~%~%uint8 id~%float32 radian~%float32 speed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Input2Val-request>))
  (cl:+ 0
     1
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Input2Val-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Input2Val-request
    (cl:cons ':id (id msg))
    (cl:cons ':radian (radian msg))
    (cl:cons ':speed (speed msg))
))
;//! \htmlinclude Input2Val-response.msg.html

(cl:defclass <Input2Val-response> (roslisp-msg-protocol:ros-message)
  ((radian_result
    :reader radian_result
    :initarg :radian_result
    :type cl:integer
    :initform 0)
   (speed_result
    :reader speed_result
    :initarg :speed_result
    :type cl:integer
    :initform 0))
)

(cl:defclass Input2Val-response (<Input2Val-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Input2Val-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Input2Val-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dynamixel_workbench_msgs-srv:<Input2Val-response> is deprecated: use dynamixel_workbench_msgs-srv:Input2Val-response instead.")))

(cl:ensure-generic-function 'radian_result-val :lambda-list '(m))
(cl:defmethod radian_result-val ((m <Input2Val-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dynamixel_workbench_msgs-srv:radian_result-val is deprecated.  Use dynamixel_workbench_msgs-srv:radian_result instead.")
  (radian_result m))

(cl:ensure-generic-function 'speed_result-val :lambda-list '(m))
(cl:defmethod speed_result-val ((m <Input2Val-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dynamixel_workbench_msgs-srv:speed_result-val is deprecated.  Use dynamixel_workbench_msgs-srv:speed_result instead.")
  (speed_result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Input2Val-response>) ostream)
  "Serializes a message object of type '<Input2Val-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'radian_result)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'radian_result)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'radian_result)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'radian_result)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'speed_result)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'speed_result)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'speed_result)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'speed_result)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Input2Val-response>) istream)
  "Deserializes a message object of type '<Input2Val-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'radian_result)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'radian_result)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'radian_result)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'radian_result)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'speed_result)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'speed_result)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'speed_result)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'speed_result)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Input2Val-response>)))
  "Returns string type for a service object of type '<Input2Val-response>"
  "dynamixel_workbench_msgs/Input2ValResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Input2Val-response)))
  "Returns string type for a service object of type 'Input2Val-response"
  "dynamixel_workbench_msgs/Input2ValResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Input2Val-response>)))
  "Returns md5sum for a message object of type '<Input2Val-response>"
  "a3b31596b7fcac5dd211a0ad0eb13680")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Input2Val-response)))
  "Returns md5sum for a message object of type 'Input2Val-response"
  "a3b31596b7fcac5dd211a0ad0eb13680")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Input2Val-response>)))
  "Returns full string definition for message of type '<Input2Val-response>"
  (cl:format cl:nil "uint32 radian_result~%uint32 speed_result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Input2Val-response)))
  "Returns full string definition for message of type 'Input2Val-response"
  (cl:format cl:nil "uint32 radian_result~%uint32 speed_result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Input2Val-response>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Input2Val-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Input2Val-response
    (cl:cons ':radian_result (radian_result msg))
    (cl:cons ':speed_result (speed_result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Input2Val)))
  'Input2Val-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Input2Val)))
  'Input2Val-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Input2Val)))
  "Returns string type for a service object of type '<Input2Val>"
  "dynamixel_workbench_msgs/Input2Val")