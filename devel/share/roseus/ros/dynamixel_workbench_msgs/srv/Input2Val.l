;; Auto-generated. Do not edit!


(when (boundp 'dynamixel_workbench_msgs::Input2Val)
  (if (not (find-package "DYNAMIXEL_WORKBENCH_MSGS"))
    (make-package "DYNAMIXEL_WORKBENCH_MSGS"))
  (shadow 'Input2Val (find-package "DYNAMIXEL_WORKBENCH_MSGS")))
(unless (find-package "DYNAMIXEL_WORKBENCH_MSGS::INPUT2VAL")
  (make-package "DYNAMIXEL_WORKBENCH_MSGS::INPUT2VAL"))
(unless (find-package "DYNAMIXEL_WORKBENCH_MSGS::INPUT2VALREQUEST")
  (make-package "DYNAMIXEL_WORKBENCH_MSGS::INPUT2VALREQUEST"))
(unless (find-package "DYNAMIXEL_WORKBENCH_MSGS::INPUT2VALRESPONSE")
  (make-package "DYNAMIXEL_WORKBENCH_MSGS::INPUT2VALRESPONSE"))

(in-package "ROS")





(defclass dynamixel_workbench_msgs::Input2ValRequest
  :super ros::object
  :slots (_id _radian _speed ))

(defmethod dynamixel_workbench_msgs::Input2ValRequest
  (:init
   (&key
    ((:id __id) 0)
    ((:radian __radian) 0.0)
    ((:speed __speed) 0.0)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _radian (float __radian))
   (setq _speed (float __speed))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:radian
   (&optional __radian)
   (if __radian (setq _radian __radian)) _radian)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:serialization-length
   ()
   (+
    ;; uint8 _id
    1
    ;; float32 _radian
    4
    ;; float32 _speed
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _id
       (write-byte _id s)
     ;; float32 _radian
       (sys::poke _radian (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _id
     (setq _id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _radian
     (setq _radian (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _speed
     (setq _speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass dynamixel_workbench_msgs::Input2ValResponse
  :super ros::object
  :slots (_radian_result _speed_result ))

(defmethod dynamixel_workbench_msgs::Input2ValResponse
  (:init
   (&key
    ((:radian_result __radian_result) 0)
    ((:speed_result __speed_result) 0)
    )
   (send-super :init)
   (setq _radian_result (round __radian_result))
   (setq _speed_result (round __speed_result))
   self)
  (:radian_result
   (&optional __radian_result)
   (if __radian_result (setq _radian_result __radian_result)) _radian_result)
  (:speed_result
   (&optional __speed_result)
   (if __speed_result (setq _speed_result __speed_result)) _speed_result)
  (:serialization-length
   ()
   (+
    ;; uint32 _radian_result
    4
    ;; uint32 _speed_result
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _radian_result
       (write-long _radian_result s)
     ;; uint32 _speed_result
       (write-long _speed_result s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _radian_result
     (setq _radian_result (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _speed_result
     (setq _speed_result (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass dynamixel_workbench_msgs::Input2Val
  :super ros::object
  :slots ())

(setf (get dynamixel_workbench_msgs::Input2Val :md5sum-) "a3b31596b7fcac5dd211a0ad0eb13680")
(setf (get dynamixel_workbench_msgs::Input2Val :datatype-) "dynamixel_workbench_msgs/Input2Val")
(setf (get dynamixel_workbench_msgs::Input2Val :request) dynamixel_workbench_msgs::Input2ValRequest)
(setf (get dynamixel_workbench_msgs::Input2Val :response) dynamixel_workbench_msgs::Input2ValResponse)

(defmethod dynamixel_workbench_msgs::Input2ValRequest
  (:response () (instance dynamixel_workbench_msgs::Input2ValResponse :init)))

(setf (get dynamixel_workbench_msgs::Input2ValRequest :md5sum-) "a3b31596b7fcac5dd211a0ad0eb13680")
(setf (get dynamixel_workbench_msgs::Input2ValRequest :datatype-) "dynamixel_workbench_msgs/Input2ValRequest")
(setf (get dynamixel_workbench_msgs::Input2ValRequest :definition-)
      "

uint8 id
float32 radian
float32 speed
---
uint32 radian_result
uint32 speed_result

")

(setf (get dynamixel_workbench_msgs::Input2ValResponse :md5sum-) "a3b31596b7fcac5dd211a0ad0eb13680")
(setf (get dynamixel_workbench_msgs::Input2ValResponse :datatype-) "dynamixel_workbench_msgs/Input2ValResponse")
(setf (get dynamixel_workbench_msgs::Input2ValResponse :definition-)
      "

uint8 id
float32 radian
float32 speed
---
uint32 radian_result
uint32 speed_result

")



(provide :dynamixel_workbench_msgs/Input2Val "a3b31596b7fcac5dd211a0ad0eb13680")


