;; Auto-generated. Do not edit!


(when (boundp 'commande::wheelType)
  (if (not (find-package "COMMANDE"))
    (make-package "COMMANDE"))
  (shadow 'wheelType (find-package "COMMANDE")))
(unless (find-package "COMMANDE::WHEELTYPE")
  (make-package "COMMANDE::WHEELTYPE"))

(in-package "ROS")
;;//! \htmlinclude wheelType.msg.html


(defclass commande::wheelType
  :super ros::object
  :slots (_w1 _w2 ))

(defmethod commande::wheelType
  (:init
   (&key
    ((:w1 __w1) 0.0)
    ((:w2 __w2) 0.0)
    )
   (send-super :init)
   (setq _w1 (float __w1))
   (setq _w2 (float __w2))
   self)
  (:w1
   (&optional __w1)
   (if __w1 (setq _w1 __w1)) _w1)
  (:w2
   (&optional __w2)
   (if __w2 (setq _w2 __w2)) _w2)
  (:serialization-length
   ()
   (+
    ;; float64 _w1
    8
    ;; float64 _w2
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _w1
       (sys::poke _w1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _w2
       (sys::poke _w2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _w1
     (setq _w1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _w2
     (setq _w2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get commande::wheelType :md5sum-) "b3c01d41a05dfc64b137725d37d1de39")
(setf (get commande::wheelType :datatype-) "commande/wheelType")
(setf (get commande::wheelType :definition-)
      "float64 w1
float64 w2

")



(provide :commande/wheelType "b3c01d41a05dfc64b137725d37d1de39")


