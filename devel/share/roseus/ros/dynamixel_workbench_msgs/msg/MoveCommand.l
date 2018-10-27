;; Auto-generated. Do not edit!


(when (boundp 'dynamixel_workbench_msgs::MoveCommand)
  (if (not (find-package "DYNAMIXEL_WORKBENCH_MSGS"))
    (make-package "DYNAMIXEL_WORKBENCH_MSGS"))
  (shadow 'MoveCommand (find-package "DYNAMIXEL_WORKBENCH_MSGS")))
(unless (find-package "DYNAMIXEL_WORKBENCH_MSGS::MOVECOMMAND")
  (make-package "DYNAMIXEL_WORKBENCH_MSGS::MOVECOMMAND"))

(in-package "ROS")
;;//! \htmlinclude MoveCommand.msg.html


(defclass dynamixel_workbench_msgs::MoveCommand
  :super ros::object
  :slots (_unit _id _goal_position _speed _to_send_command ))

(defmethod dynamixel_workbench_msgs::MoveCommand
  (:init
   (&key
    ((:unit __unit) "")
    ((:id __id) 0)
    ((:goal_position __goal_position) 0.0)
    ((:speed __speed) 0.0)
    ((:to_send_command __to_send_command) nil)
    )
   (send-super :init)
   (setq _unit (string __unit))
   (setq _id (round __id))
   (setq _goal_position (float __goal_position))
   (setq _speed (float __speed))
   (setq _to_send_command __to_send_command)
   self)
  (:unit
   (&optional __unit)
   (if __unit (setq _unit __unit)) _unit)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:goal_position
   (&optional __goal_position)
   (if __goal_position (setq _goal_position __goal_position)) _goal_position)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:to_send_command
   (&optional __to_send_command)
   (if __to_send_command (setq _to_send_command __to_send_command)) _to_send_command)
  (:serialization-length
   ()
   (+
    ;; string _unit
    4 (length _unit)
    ;; uint8 _id
    1
    ;; float32 _goal_position
    4
    ;; float32 _speed
    4
    ;; bool _to_send_command
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _unit
       (write-long (length _unit) s) (princ _unit s)
     ;; uint8 _id
       (write-byte _id s)
     ;; float32 _goal_position
       (sys::poke _goal_position (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _to_send_command
       (if _to_send_command (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _unit
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _unit (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _id
     (setq _id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _goal_position
     (setq _goal_position (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _speed
     (setq _speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _to_send_command
     (setq _to_send_command (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get dynamixel_workbench_msgs::MoveCommand :md5sum-) "eb2d04320ad15a39e4def0cfe3574db9")
(setf (get dynamixel_workbench_msgs::MoveCommand :datatype-) "dynamixel_workbench_msgs/MoveCommand")
(setf (get dynamixel_workbench_msgs::MoveCommand :definition-)
      "# This message is used to send position command to dynamixel

string unit
uint8 id
float32 goal_position
float32 speed
bool to_send_command


")



(provide :dynamixel_workbench_msgs/MoveCommand "eb2d04320ad15a39e4def0cfe3574db9")


