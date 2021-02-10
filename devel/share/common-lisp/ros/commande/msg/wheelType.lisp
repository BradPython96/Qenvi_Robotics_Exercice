; Auto-generated. Do not edit!


(cl:in-package commande-msg)


;//! \htmlinclude wheelType.msg.html

(cl:defclass <wheelType> (roslisp-msg-protocol:ros-message)
  ((w1
    :reader w1
    :initarg :w1
    :type cl:float
    :initform 0.0)
   (w2
    :reader w2
    :initarg :w2
    :type cl:float
    :initform 0.0))
)

(cl:defclass wheelType (<wheelType>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <wheelType>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'wheelType)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name commande-msg:<wheelType> is deprecated: use commande-msg:wheelType instead.")))

(cl:ensure-generic-function 'w1-val :lambda-list '(m))
(cl:defmethod w1-val ((m <wheelType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader commande-msg:w1-val is deprecated.  Use commande-msg:w1 instead.")
  (w1 m))

(cl:ensure-generic-function 'w2-val :lambda-list '(m))
(cl:defmethod w2-val ((m <wheelType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader commande-msg:w2-val is deprecated.  Use commande-msg:w2 instead.")
  (w2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <wheelType>) ostream)
  "Serializes a message object of type '<wheelType>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'w1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'w2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <wheelType>) istream)
  "Deserializes a message object of type '<wheelType>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'w1) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'w2) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<wheelType>)))
  "Returns string type for a message object of type '<wheelType>"
  "commande/wheelType")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'wheelType)))
  "Returns string type for a message object of type 'wheelType"
  "commande/wheelType")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<wheelType>)))
  "Returns md5sum for a message object of type '<wheelType>"
  "b3c01d41a05dfc64b137725d37d1de39")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'wheelType)))
  "Returns md5sum for a message object of type 'wheelType"
  "b3c01d41a05dfc64b137725d37d1de39")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<wheelType>)))
  "Returns full string definition for message of type '<wheelType>"
  (cl:format cl:nil "float64 w1~%float64 w2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'wheelType)))
  "Returns full string definition for message of type 'wheelType"
  (cl:format cl:nil "float64 w1~%float64 w2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <wheelType>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <wheelType>))
  "Converts a ROS message object to a list"
  (cl:list 'wheelType
    (cl:cons ':w1 (w1 msg))
    (cl:cons ':w2 (w2 msg))
))
