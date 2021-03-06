;; Auto-generated. Do not edit!


(when (boundp 'dynamixel_workbench_msgs::JointCommand)
  (if (not (find-package "DYNAMIXEL_WORKBENCH_MSGS"))
    (make-package "DYNAMIXEL_WORKBENCH_MSGS"))
  (shadow 'JointCommand (find-package "DYNAMIXEL_WORKBENCH_MSGS")))
(unless (find-package "DYNAMIXEL_WORKBENCH_MSGS::JOINTCOMMAND")
  (make-package "DYNAMIXEL_WORKBENCH_MSGS::JOINTCOMMAND"))
(unless (find-package "DYNAMIXEL_WORKBENCH_MSGS::JOINTCOMMANDREQUEST")
  (make-package "DYNAMIXEL_WORKBENCH_MSGS::JOINTCOMMANDREQUEST"))
(unless (find-package "DYNAMIXEL_WORKBENCH_MSGS::JOINTCOMMANDRESPONSE")
  (make-package "DYNAMIXEL_WORKBENCH_MSGS::JOINTCOMMANDRESPONSE"))

(in-package "ROS")





(defclass dynamixel_workbench_msgs::JointCommandRequest
  :super ros::object
  :slots (_unit _id _goal_position _speed ))

(defmethod dynamixel_workbench_msgs::JointCommandRequest
  (:init
   (&key
    ((:unit __unit) "")
    ((:id __id) 0)
    ((:goal_position __goal_position) 0.0)
    ((:speed __speed) 0.0)
    )
   (send-super :init)
   (setq _unit (string __unit))
   (setq _id (round __id))
   (setq _goal_position (float __goal_position))
   (setq _speed (float __speed))
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
   ;;
   self)
  )

(defclass dynamixel_workbench_msgs::JointCommandResponse
  :super ros::object
  :slots (_position_result _speed_result ))

(defmethod dynamixel_workbench_msgs::JointCommandResponse
  (:init
   (&key
    ((:position_result __position_result) nil)
    ((:speed_result __speed_result) nil)
    )
   (send-super :init)
   (setq _position_result __position_result)
   (setq _speed_result __speed_result)
   self)
  (:position_result
   (&optional __position_result)
   (if __position_result (setq _position_result __position_result)) _position_result)
  (:speed_result
   (&optional __speed_result)
   (if __speed_result (setq _speed_result __speed_result)) _speed_result)
  (:serialization-length
   ()
   (+
    ;; bool _position_result
    1
    ;; bool _speed_result
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _position_result
       (if _position_result (write-byte -1 s) (write-byte 0 s))
     ;; bool _speed_result
       (if _speed_result (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _position_result
     (setq _position_result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _speed_result
     (setq _speed_result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass dynamixel_workbench_msgs::JointCommand
  :super ros::object
  :slots ())

(setf (get dynamixel_workbench_msgs::JointCommand :md5sum-) "6f30535bbb57aee41ebc5cbacab95fb8")
(setf (get dynamixel_workbench_msgs::JointCommand :datatype-) "dynamixel_workbench_msgs/JointCommand")
(setf (get dynamixel_workbench_msgs::JointCommand :request) dynamixel_workbench_msgs::JointCommandRequest)
(setf (get dynamixel_workbench_msgs::JointCommand :response) dynamixel_workbench_msgs::JointCommandResponse)

(defmethod dynamixel_workbench_msgs::JointCommandRequest
  (:response () (instance dynamixel_workbench_msgs::JointCommandResponse :init)))

(setf (get dynamixel_workbench_msgs::JointCommandRequest :md5sum-) "6f30535bbb57aee41ebc5cbacab95fb8")
(setf (get dynamixel_workbench_msgs::JointCommandRequest :datatype-) "dynamixel_workbench_msgs/JointCommandRequest")
(setf (get dynamixel_workbench_msgs::JointCommandRequest :definition-)
      "

string unit
uint8 id
float32 goal_position
float32 speed
---
bool position_result
bool speed_result

")

(setf (get dynamixel_workbench_msgs::JointCommandResponse :md5sum-) "6f30535bbb57aee41ebc5cbacab95fb8")
(setf (get dynamixel_workbench_msgs::JointCommandResponse :datatype-) "dynamixel_workbench_msgs/JointCommandResponse")
(setf (get dynamixel_workbench_msgs::JointCommandResponse :definition-)
      "

string unit
uint8 id
float32 goal_position
float32 speed
---
bool position_result
bool speed_result

")



(provide :dynamixel_workbench_msgs/JointCommand "6f30535bbb57aee41ebc5cbacab95fb8")


