; Auto-generated. Do not edit!


(cl:in-package dynamixel_workbench_msgs-msg)


;//! \htmlinclude MoveCommand.msg.html

(cl:defclass <MoveCommand> (roslisp-msg-protocol:ros-message)
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
    :initform 0.0)
   (to_send_command
    :reader to_send_command
    :initarg :to_send_command
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass MoveCommand (<MoveCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoveCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoveCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dynamixel_workbench_msgs-msg:<MoveCommand> is deprecated: use dynamixel_workbench_msgs-msg:MoveCommand instead.")))

(cl:ensure-generic-function 'unit-val :lambda-list '(m))
(cl:defmethod unit-val ((m <MoveCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dynamixel_workbench_msgs-msg:unit-val is deprecated.  Use dynamixel_workbench_msgs-msg:unit instead.")
  (unit m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <MoveCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dynamixel_workbench_msgs-msg:id-val is deprecated.  Use dynamixel_workbench_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'goal_position-val :lambda-list '(m))
(cl:defmethod goal_position-val ((m <MoveCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dynamixel_workbench_msgs-msg:goal_position-val is deprecated.  Use dynamixel_workbench_msgs-msg:goal_position instead.")
  (goal_position m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <MoveCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dynamixel_workbench_msgs-msg:speed-val is deprecated.  Use dynamixel_workbench_msgs-msg:speed instead.")
  (speed m))

(cl:ensure-generic-function 'to_send_command-val :lambda-list '(m))
(cl:defmethod to_send_command-val ((m <MoveCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dynamixel_workbench_msgs-msg:to_send_command-val is deprecated.  Use dynamixel_workbench_msgs-msg:to_send_command instead.")
  (to_send_command m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoveCommand>) ostream)
  "Serializes a message object of type '<MoveCommand>"
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
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'to_send_command) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoveCommand>) istream)
  "Deserializes a message object of type '<MoveCommand>"
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
    (cl:setf (cl:slot-value msg 'to_send_command) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoveCommand>)))
  "Returns string type for a message object of type '<MoveCommand>"
  "dynamixel_workbench_msgs/MoveCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveCommand)))
  "Returns string type for a message object of type 'MoveCommand"
  "dynamixel_workbench_msgs/MoveCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoveCommand>)))
  "Returns md5sum for a message object of type '<MoveCommand>"
  "eb2d04320ad15a39e4def0cfe3574db9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoveCommand)))
  "Returns md5sum for a message object of type 'MoveCommand"
  "eb2d04320ad15a39e4def0cfe3574db9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoveCommand>)))
  "Returns full string definition for message of type '<MoveCommand>"
  (cl:format cl:nil "# This message is used to send position command to dynamixel~%~%string unit~%uint8 id~%float32 goal_position~%float32 speed~%bool to_send_command~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoveCommand)))
  "Returns full string definition for message of type 'MoveCommand"
  (cl:format cl:nil "# This message is used to send position command to dynamixel~%~%string unit~%uint8 id~%float32 goal_position~%float32 speed~%bool to_send_command~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoveCommand>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'unit))
     1
     4
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoveCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'MoveCommand
    (cl:cons ':unit (unit msg))
    (cl:cons ':id (id msg))
    (cl:cons ':goal_position (goal_position msg))
    (cl:cons ':speed (speed msg))
    (cl:cons ':to_send_command (to_send_command msg))
))
