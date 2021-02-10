
(cl:in-package :asdf)

(defsystem "commande-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "commandType" :depends-on ("_package_commandType"))
    (:file "_package_commandType" :depends-on ("_package"))
    (:file "wheelType" :depends-on ("_package_wheelType"))
    (:file "_package_wheelType" :depends-on ("_package"))
  ))