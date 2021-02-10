; Auto-generated. Do not edit!


(cl:in-package commande-msg)


;//! \htmlinclude commandType.msg.html

(cl:defclass <commandType> (roslisp-msg-protocol:ros-message)
  ((rayon
    :reader rayon
    :initarg :rayon
    :type cl:float
    :initform 0.0)
   (demi_ecart
    :reader demi_ecart
    :initarg :demi_ecart
    :type cl:float
    :initform 0.0)
   (u
    :reader u
    :initarg :u
    :type cl:float
    :initform 0.0)
   (w
    :reader w
    :initarg :w
    :type cl:float
    :initform 0.0))
)

(cl:defclass commandType (<commandType>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <commandType>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'commandType)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name commande-msg:<commandType> is deprecated: use commande-msg:commandType instead.")))

(cl:ensure-generic-function 'rayon-val :lambda-list '(m))
(cl:defmethod rayon-val ((m <commandType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader commande-msg:rayon-val is deprecated.  Use commande-msg:rayon instead.")
  (rayon m))

(cl:ensure-generic-function 'demi_ecart-val :lambda-list '(m))
(cl:defmethod demi_ecart-val ((m <commandType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader commande-msg:demi_ecart-val is deprecated.  Use commande-msg:demi_ecart instead.")
  (demi_ecart m))

(cl:ensure-generic-function 'u-val :lambda-list '(m))
(cl:defmethod u-val ((m <commandType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader commande-msg:u-val is deprecated.  Use commande-msg:u instead.")
  (u m))

(cl:ensure-generic-function 'w-val :lambda-list '(m))
(cl:defmethod w-val ((m <commandType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader commande-msg:w-val is deprecated.  Use commande-msg:w instead.")
  (w m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <commandType>) ostream)
  "Serializes a message object of type '<commandType>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'rayon))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'demi_ecart))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'u))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'w))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <commandType>) istream)
  "Deserializes a message object of type '<commandType>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rayon) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'demi_ecart) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'u) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'w) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<commandType>)))
  "Returns string type for a message object of type '<commandType>"
  "commande/commandType")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'commandType)))
  "Returns string type for a message object of type 'commandType"
  "commande/commandType")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<commandType>)))
  "Returns md5sum for a message object of type '<commandType>"
  "4074ebba24351b6cc4dea7efb1a4d48f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'commandType)))
  "Returns md5sum for a message object of type 'commandType"
  "4074ebba24351b6cc4dea7efb1a4d48f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<commandType>)))
  "Returns full string definition for message of type '<commandType>"
  (cl:format cl:nil "float64 rayon~%float64 demi_ecart~%float64 u~%float64 w~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'commandType)))
  "Returns full string definition for message of type 'commandType"
  (cl:format cl:nil "float64 rayon~%float64 demi_ecart~%float64 u~%float64 w~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <commandType>))
  (cl:+ 0
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <commandType>))
  "Converts a ROS message object to a list"
  (cl:list 'commandType
    (cl:cons ':rayon (rayon msg))
    (cl:cons ':demi_ecart (demi_ecart msg))
    (cl:cons ':u (u msg))
    (cl:cons ':w (w msg))
))
