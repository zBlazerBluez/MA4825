; Auto-generated. Do not edit!


(cl:in-package dynamixel_workbench_msgs-msg)


;//! \htmlinclude MovingCommand.msg.html

(cl:defclass <MovingCommand> (roslisp-msg-protocol:ros-message)
  ((id
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
    :initform 0.0)
   (to_send_command
    :reader to_send_command
    :initarg :to_send_command
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass MovingCommand (<MovingCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MovingCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MovingCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dynamixel_workbench_msgs-msg:<MovingCommand> is deprecated: use dynamixel_workbench_msgs-msg:MovingCommand instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <MovingCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dynamixel_workbench_msgs-msg:id-val is deprecated.  Use dynamixel_workbench_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'goal_position-val :lambda-list '(m))
(cl:defmethod goal_position-val ((m <MovingCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dynamixel_workbench_msgs-msg:goal_position-val is deprecated.  Use dynamixel_workbench_msgs-msg:goal_position instead.")
  (goal_position m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <MovingCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dynamixel_workbench_msgs-msg:speed-val is deprecated.  Use dynamixel_workbench_msgs-msg:speed instead.")
  (speed m))

(cl:ensure-generic-function 'to_send_command-val :lambda-list '(m))
(cl:defmethod to_send_command-val ((m <MovingCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dynamixel_workbench_msgs-msg:to_send_command-val is deprecated.  Use dynamixel_workbench_msgs-msg:to_send_command instead.")
  (to_send_command m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MovingCommand>) ostream)
  "Serializes a message object of type '<MovingCommand>"
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
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'to_send_command) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MovingCommand>) istream)
  "Deserializes a message object of type '<MovingCommand>"
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
    (cl:setf (cl:slot-value msg 'to_send_command) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MovingCommand>)))
  "Returns string type for a message object of type '<MovingCommand>"
  "dynamixel_workbench_msgs/MovingCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MovingCommand)))
  "Returns string type for a message object of type 'MovingCommand"
  "dynamixel_workbench_msgs/MovingCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MovingCommand>)))
  "Returns md5sum for a message object of type '<MovingCommand>"
  "e2c23716abf0bc165dec8a781d95100b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MovingCommand)))
  "Returns md5sum for a message object of type 'MovingCommand"
  "e2c23716abf0bc165dec8a781d95100b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MovingCommand>)))
  "Returns full string definition for message of type '<MovingCommand>"
  (cl:format cl:nil "# This message is used to send position command to dynamixel~%~%uint8 id~%float32 goal_position~%float32 speed~%bool to_send_command~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MovingCommand)))
  "Returns full string definition for message of type 'MovingCommand"
  (cl:format cl:nil "# This message is used to send position command to dynamixel~%~%uint8 id~%float32 goal_position~%float32 speed~%bool to_send_command~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MovingCommand>))
  (cl:+ 0
     1
     4
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MovingCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'MovingCommand
    (cl:cons ':id (id msg))
    (cl:cons ':goal_position (goal_position msg))
    (cl:cons ':speed (speed msg))
    (cl:cons ':to_send_command (to_send_command msg))
))
