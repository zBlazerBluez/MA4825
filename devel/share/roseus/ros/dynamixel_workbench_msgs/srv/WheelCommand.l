;; Auto-generated. Do not edit!


(when (boundp 'dynamixel_workbench_msgs::WheelCommand)
  (if (not (find-package "DYNAMIXEL_WORKBENCH_MSGS"))
    (make-package "DYNAMIXEL_WORKBENCH_MSGS"))
  (shadow 'WheelCommand (find-package "DYNAMIXEL_WORKBENCH_MSGS")))
(unless (find-package "DYNAMIXEL_WORKBENCH_MSGS::WHEELCOMMAND")
  (make-package "DYNAMIXEL_WORKBENCH_MSGS::WHEELCOMMAND"))
(unless (find-package "DYNAMIXEL_WORKBENCH_MSGS::WHEELCOMMANDREQUEST")
  (make-package "DYNAMIXEL_WORKBENCH_MSGS::WHEELCOMMANDREQUEST"))
(unless (find-package "DYNAMIXEL_WORKBENCH_MSGS::WHEELCOMMANDRESPONSE")
  (make-package "DYNAMIXEL_WORKBENCH_MSGS::WHEELCOMMANDRESPONSE"))

(in-package "ROS")





(defclass dynamixel_workbench_msgs::WheelCommandRequest
  :super ros::object
  :slots (_vel1 _vel2 _vel3 _vel4 _vel5 _vel6 ))

(defmethod dynamixel_workbench_msgs::WheelCommandRequest
  (:init
   (&key
    ((:vel1 __vel1) 0.0)
    ((:vel2 __vel2) 0.0)
    ((:vel3 __vel3) 0.0)
    ((:vel4 __vel4) 0.0)
    ((:vel5 __vel5) 0.0)
    ((:vel6 __vel6) 0.0)
    )
   (send-super :init)
   (setq _vel1 (float __vel1))
   (setq _vel2 (float __vel2))
   (setq _vel3 (float __vel3))
   (setq _vel4 (float __vel4))
   (setq _vel5 (float __vel5))
   (setq _vel6 (float __vel6))
   self)
  (:vel1
   (&optional __vel1)
   (if __vel1 (setq _vel1 __vel1)) _vel1)
  (:vel2
   (&optional __vel2)
   (if __vel2 (setq _vel2 __vel2)) _vel2)
  (:vel3
   (&optional __vel3)
   (if __vel3 (setq _vel3 __vel3)) _vel3)
  (:vel4
   (&optional __vel4)
   (if __vel4 (setq _vel4 __vel4)) _vel4)
  (:vel5
   (&optional __vel5)
   (if __vel5 (setq _vel5 __vel5)) _vel5)
  (:vel6
   (&optional __vel6)
   (if __vel6 (setq _vel6 __vel6)) _vel6)
  (:serialization-length
   ()
   (+
    ;; float32 _vel1
    4
    ;; float32 _vel2
    4
    ;; float32 _vel3
    4
    ;; float32 _vel4
    4
    ;; float32 _vel5
    4
    ;; float32 _vel6
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _vel1
       (sys::poke _vel1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _vel2
       (sys::poke _vel2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _vel3
       (sys::poke _vel3 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _vel4
       (sys::poke _vel4 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _vel5
       (sys::poke _vel5 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _vel6
       (sys::poke _vel6 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _vel1
     (setq _vel1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _vel2
     (setq _vel2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _vel3
     (setq _vel3 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _vel4
     (setq _vel4 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _vel5
     (setq _vel5 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _vel6
     (setq _vel6 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass dynamixel_workbench_msgs::WheelCommandResponse
  :super ros::object
  :slots (_result1 _result2 _result3 _result4 _result5 _result6 ))

(defmethod dynamixel_workbench_msgs::WheelCommandResponse
  (:init
   (&key
    ((:result1 __result1) nil)
    ((:result2 __result2) nil)
    ((:result3 __result3) nil)
    ((:result4 __result4) nil)
    ((:result5 __result5) nil)
    ((:result6 __result6) nil)
    )
   (send-super :init)
   (setq _result1 __result1)
   (setq _result2 __result2)
   (setq _result3 __result3)
   (setq _result4 __result4)
   (setq _result5 __result5)
   (setq _result6 __result6)
   self)
  (:result1
   (&optional __result1)
   (if __result1 (setq _result1 __result1)) _result1)
  (:result2
   (&optional __result2)
   (if __result2 (setq _result2 __result2)) _result2)
  (:result3
   (&optional __result3)
   (if __result3 (setq _result3 __result3)) _result3)
  (:result4
   (&optional __result4)
   (if __result4 (setq _result4 __result4)) _result4)
  (:result5
   (&optional __result5)
   (if __result5 (setq _result5 __result5)) _result5)
  (:result6
   (&optional __result6)
   (if __result6 (setq _result6 __result6)) _result6)
  (:serialization-length
   ()
   (+
    ;; bool _result1
    1
    ;; bool _result2
    1
    ;; bool _result3
    1
    ;; bool _result4
    1
    ;; bool _result5
    1
    ;; bool _result6
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _result1
       (if _result1 (write-byte -1 s) (write-byte 0 s))
     ;; bool _result2
       (if _result2 (write-byte -1 s) (write-byte 0 s))
     ;; bool _result3
       (if _result3 (write-byte -1 s) (write-byte 0 s))
     ;; bool _result4
       (if _result4 (write-byte -1 s) (write-byte 0 s))
     ;; bool _result5
       (if _result5 (write-byte -1 s) (write-byte 0 s))
     ;; bool _result6
       (if _result6 (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _result1
     (setq _result1 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _result2
     (setq _result2 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _result3
     (setq _result3 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _result4
     (setq _result4 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _result5
     (setq _result5 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _result6
     (setq _result6 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass dynamixel_workbench_msgs::WheelCommand
  :super ros::object
  :slots ())

(setf (get dynamixel_workbench_msgs::WheelCommand :md5sum-) "baceffa34ff35ffa84b373eb230d842b")
(setf (get dynamixel_workbench_msgs::WheelCommand :datatype-) "dynamixel_workbench_msgs/WheelCommand")
(setf (get dynamixel_workbench_msgs::WheelCommand :request) dynamixel_workbench_msgs::WheelCommandRequest)
(setf (get dynamixel_workbench_msgs::WheelCommand :response) dynamixel_workbench_msgs::WheelCommandResponse)

(defmethod dynamixel_workbench_msgs::WheelCommandRequest
  (:response () (instance dynamixel_workbench_msgs::WheelCommandResponse :init)))

(setf (get dynamixel_workbench_msgs::WheelCommandRequest :md5sum-) "baceffa34ff35ffa84b373eb230d842b")
(setf (get dynamixel_workbench_msgs::WheelCommandRequest :datatype-) "dynamixel_workbench_msgs/WheelCommandRequest")
(setf (get dynamixel_workbench_msgs::WheelCommandRequest :definition-)
      "

float32 vel1
float32 vel2
float32 vel3
float32 vel4
float32 vel5
float32 vel6
---
bool result1
bool result2
bool result3
bool result4
bool result5
bool result6

")

(setf (get dynamixel_workbench_msgs::WheelCommandResponse :md5sum-) "baceffa34ff35ffa84b373eb230d842b")
(setf (get dynamixel_workbench_msgs::WheelCommandResponse :datatype-) "dynamixel_workbench_msgs/WheelCommandResponse")
(setf (get dynamixel_workbench_msgs::WheelCommandResponse :definition-)
      "

float32 vel1
float32 vel2
float32 vel3
float32 vel4
float32 vel5
float32 vel6
---
bool result1
bool result2
bool result3
bool result4
bool result5
bool result6

")



(provide :dynamixel_workbench_msgs/WheelCommand "baceffa34ff35ffa84b373eb230d842b")


