;; Auto-generated. Do not edit!


(when (boundp 'simple_arm::GoToPosition)
  (if (not (find-package "SIMPLE_ARM"))
    (make-package "SIMPLE_ARM"))
  (shadow 'GoToPosition (find-package "SIMPLE_ARM")))
(unless (find-package "SIMPLE_ARM::GOTOPOSITION")
  (make-package "SIMPLE_ARM::GOTOPOSITION"))
(unless (find-package "SIMPLE_ARM::GOTOPOSITIONREQUEST")
  (make-package "SIMPLE_ARM::GOTOPOSITIONREQUEST"))
(unless (find-package "SIMPLE_ARM::GOTOPOSITIONRESPONSE")
  (make-package "SIMPLE_ARM::GOTOPOSITIONRESPONSE"))

(in-package "ROS")





(defclass simple_arm::GoToPositionRequest
  :super ros::object
  :slots (_joint1 _joint2 ))

(defmethod simple_arm::GoToPositionRequest
  (:init
   (&key
    ((:joint1 __joint1) 0.0)
    ((:joint2 __joint2) 0.0)
    )
   (send-super :init)
   (setq _joint1 (float __joint1))
   (setq _joint2 (float __joint2))
   self)
  (:joint1
   (&optional __joint1)
   (if __joint1 (setq _joint1 __joint1)) _joint1)
  (:joint2
   (&optional __joint2)
   (if __joint2 (setq _joint2 __joint2)) _joint2)
  (:serialization-length
   ()
   (+
    ;; float64 _joint1
    8
    ;; float64 _joint2
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _joint1
       (sys::poke _joint1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _joint2
       (sys::poke _joint2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _joint1
     (setq _joint1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _joint2
     (setq _joint2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass simple_arm::GoToPositionResponse
  :super ros::object
  :slots (_time_elapsed ))

(defmethod simple_arm::GoToPositionResponse
  (:init
   (&key
    ((:time_elapsed __time_elapsed) (instance ros::time :init))
    )
   (send-super :init)
   (setq _time_elapsed __time_elapsed)
   self)
  (:time_elapsed
   (&optional __time_elapsed)
   (if __time_elapsed (setq _time_elapsed __time_elapsed)) _time_elapsed)
  (:serialization-length
   ()
   (+
    ;; duration _time_elapsed
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; duration _time_elapsed
       (write-long (send _time_elapsed :sec) s) (write-long (send _time_elapsed :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; duration _time_elapsed
     (send _time_elapsed :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _time_elapsed :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass simple_arm::GoToPosition
  :super ros::object
  :slots ())

(setf (get simple_arm::GoToPosition :md5sum-) "062c9f64fb267c6b5032b41f799ea6fd")
(setf (get simple_arm::GoToPosition :datatype-) "simple_arm/GoToPosition")
(setf (get simple_arm::GoToPosition :request) simple_arm::GoToPositionRequest)
(setf (get simple_arm::GoToPosition :response) simple_arm::GoToPositionResponse)

(defmethod simple_arm::GoToPositionRequest
  (:response () (instance simple_arm::GoToPositionResponse :init)))

(setf (get simple_arm::GoToPositionRequest :md5sum-) "062c9f64fb267c6b5032b41f799ea6fd")
(setf (get simple_arm::GoToPositionRequest :datatype-) "simple_arm/GoToPositionRequest")
(setf (get simple_arm::GoToPositionRequest :definition-)
      "float64 joint1
float64 joint2
---
duration time_elapsed

")

(setf (get simple_arm::GoToPositionResponse :md5sum-) "062c9f64fb267c6b5032b41f799ea6fd")
(setf (get simple_arm::GoToPositionResponse :datatype-) "simple_arm/GoToPositionResponse")
(setf (get simple_arm::GoToPositionResponse :definition-)
      "float64 joint1
float64 joint2
---
duration time_elapsed

")



(provide :simple_arm/GoToPosition "062c9f64fb267c6b5032b41f799ea6fd")


