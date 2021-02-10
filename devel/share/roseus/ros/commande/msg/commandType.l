;; Auto-generated. Do not edit!


(when (boundp 'commande::commandType)
  (if (not (find-package "COMMANDE"))
    (make-package "COMMANDE"))
  (shadow 'commandType (find-package "COMMANDE")))
(unless (find-package "COMMANDE::COMMANDTYPE")
  (make-package "COMMANDE::COMMANDTYPE"))

(in-package "ROS")
;;//! \htmlinclude commandType.msg.html


(defclass commande::commandType
  :super ros::object
  :slots (_rayon _demi_ecart _u _w ))

(defmethod commande::commandType
  (:init
   (&key
    ((:rayon __rayon) 0.0)
    ((:demi_ecart __demi_ecart) 0.0)
    ((:u __u) 0.0)
    ((:w __w) 0.0)
    )
   (send-super :init)
   (setq _rayon (float __rayon))
   (setq _demi_ecart (float __demi_ecart))
   (setq _u (float __u))
   (setq _w (float __w))
   self)
  (:rayon
   (&optional __rayon)
   (if __rayon (setq _rayon __rayon)) _rayon)
  (:demi_ecart
   (&optional __demi_ecart)
   (if __demi_ecart (setq _demi_ecart __demi_ecart)) _demi_ecart)
  (:u
   (&optional __u)
   (if __u (setq _u __u)) _u)
  (:w
   (&optional __w)
   (if __w (setq _w __w)) _w)
  (:serialization-length
   ()
   (+
    ;; float64 _rayon
    8
    ;; float64 _demi_ecart
    8
    ;; float64 _u
    8
    ;; float64 _w
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _rayon
       (sys::poke _rayon (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _demi_ecart
       (sys::poke _demi_ecart (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _u
       (sys::poke _u (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _w
       (sys::poke _w (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _rayon
     (setq _rayon (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _demi_ecart
     (setq _demi_ecart (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _u
     (setq _u (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _w
     (setq _w (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get commande::commandType :md5sum-) "4074ebba24351b6cc4dea7efb1a4d48f")
(setf (get commande::commandType :datatype-) "commande/commandType")
(setf (get commande::commandType :definition-)
      "float64 rayon
float64 demi_ecart
float64 u
float64 w


")



(provide :commande/commandType "4074ebba24351b6cc4dea7efb1a4d48f")


