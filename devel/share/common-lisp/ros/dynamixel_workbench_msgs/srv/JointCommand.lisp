; Auto-generated. Do not edit!


(cl:in-package dynamixel_workbench_msgs-srv)


;//! \htmlinclude JointCommand-request.msg.html

(cl:defclass <JointCommand-request> (roslisp-msg-protocol:ros-message)
  ((unit
    :reader unit
    :initarg :unit
    :type cl:string
    :initform "")
   (id
    :reader id
    :initarg :id
    :type cl:fixnum
    :initform 0)
   (goal_position
    :reader goal_position
    :initarg :goal_position
    :type cl:float
    :initform 0.0)
   (speed
    :reader speed
    :initarg :speed
    :type cl:float
    :initform 0.0))
)

(cl:defclass JointCommand-request (<JointCommand-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <JointCommand-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'JointCommand-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dynamixel_workbench_msgs-srv:<JointCommand-request> is deprecated: use dynamixel_workbench_msgs-srv:JointCommand-request instead.")))

(cl:ensure-generic-function 'unit-val :lambda-list '(m))
(cl:defmethod unit-val ((m <JointCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dynamixel_workbench_msgs-srv:unit-val is deprecated.  Use dynamixel_workbench_msgs-srv:unit instead.")
  (unit m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <JointCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dynamixel_workbench_msgs-srv:id-val is deprecated.  Use dynamixel_workbench_msgs-srv:id instead.")
  (id m))

(cl:ensure-generic-function 'goal_position-val :lambda-list '(m))
(cl:defmethod goal_position-val ((m <JointCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dynamixel_workbench_msgs-srv:goal_position-val is deprecated.  Use dynamixel_workbench_msgs-srv:goal_position instead.")
  (goal_position m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <JointCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dynamixel_workbench_msgs-srv:speed-val is deprecated.  Use dynamixel_workbench_msgs-srv:speed instead.")
  (speed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <JointCommand-request>) ostream)
  "Serializes a message object of type '<JointCommand-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'unit))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'unit))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'goal_position))))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <JointCommand-request>) istream)
  "Deserializes a message object of type '<JointCommand-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'unit) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'unit) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'goal_position) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<JointCommand-request>)))
  "Returns string type for a service object of type '<JointCommand-request>"
  "dynamixel_workbench_msgs/JointCommandRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JointCommand-request)))
  "Returns string type for a service object of type 'JointCommand-request"
  "dynamixel_workbench_msgs/JointCommandRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<JointCommand-request>)))
  "Returns md5sum for a message object of type '<JointCommand-request>"
  "6f30535bbb57aee41ebc5cbacab95fb8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'JointCommand-request)))
  "Returns md5sum for a message object of type 'JointCommand-request"
  "6f30535bbb57aee41ebc5cbacab95fb8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<JointCommand-request>)))
  "Returns full string definition for message of type '<JointCommand-request>"
  (cl:format cl:nil "~%~%string unit~%uint8 id~%float32 goal_position~%float32 speed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'JointCommand-request)))
  "Returns full string definition for message of type 'JointCommand-request"
  (cl:format cl:nil "~%~%string unit~%uint8 id~%float32 goal_position~%float32 speed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <JointCommand-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'unit))
     1
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <JointCommand-request>))
  "Converts a ROS message object to a list"
  (cl:list 'JointCommand-request
    (cl:cons ':unit (unit msg))
    (cl:cons ':id (id msg))
    (cl:cons ':goal_position (goal_position msg))
    (cl:cons ':speed (speed msg))
))
;//! \htmlinclude JointCommand-response.msg.html

(cl:defclass <JointCommand-response> (roslisp-msg-protocol:ros-message)
  ((position_result
    :reader position_result
    :initarg :position_result
    :type cl:boolean
    :initform cl:nil)
   (speed_result
    :reader speed_result
    :initarg :speed_result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass JointCommand-response (<JointCommand-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <JointCommand-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'JointCommand-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dynamixel_workbench_msgs-srv:<JointCommand-response> is deprecated: use dynamixel_workbench_msgs-srv:JointCommand-response instead.")))

(cl:ensure-generic-function 'position_result-val :lambda-list '(m))
(cl:defmethod position_result-val ((m <JointCommand-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dynamixel_workbench_msgs-srv:position_result-val is deprecated.  Use dynamixel_workbench_msgs-srv:position_result instead.")
  (position_result m))

(cl:ensure-generic-function 'speed_result-val :lambda-list '(m))
(cl:defmethod speed_result-val ((m <JointCommand-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dynamixel_workbench_msgs-srv:speed_result-val is deprecated.  Use dynamixel_workbench_msgs-srv:speed_result instead.")
  (speed_result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <JointCommand-response>) ostream)
  "Serializes a message object of type '<JointCommand-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'position_result) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'speed_result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <JointCommand-response>) istream)
  "Deserializes a message object of type '<JointCommand-response>"
    (cl:setf (cl:slot-value msg 'position_result) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'speed_result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<JointCommand-response>)))
  "Returns string type for a service object of type '<JointCommand-response>"
  "dynamixel_workbench_msgs/JointCommandResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JointCommand-response)))
  "Returns string type for a service object of type 'JointCommand-response"
  "dynamixel_workbench_msgs/JointCommandResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<JointCommand-response>)))
  "Returns md5sum for a message object of type '<JointCommand-response>"
  "6f30535bbb57aee41ebc5cbacab95fb8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'JointCommand-response)))
  "Returns md5sum for a message object of type 'JointCommand-response"
  "6f30535bbb57aee41ebc5cbacab95fb8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<JointCommand-response>)))
  "Returns full string definition for message of type '<JointCommand-response>"
  (cl:format cl:nil "bool position_result~%bool speed_result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'JointCommand-response)))
  "Returns full string definition for message of type 'JointCommand-response"
  (cl:format cl:nil "bool position_result~%bool speed_result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <JointCommand-response>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <JointCommand-response>))
  "Converts a ROS message object to a list"
  (cl:list 'JointCommand-response
    (cl:cons ':position_result (position_result msg))
    (cl:cons ':speed_result (speed_result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'JointCommand)))
  'JointCommand-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'JointCommand)))
  'JointCommand-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JointCommand)))
  "Returns string type for a service object of type '<JointCommand>"
  "dynamixel_workbench_msgs/JointCommand")