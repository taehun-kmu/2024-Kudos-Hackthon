
(cl:in-package :asdf)

(defsystem "omo_r1mini_bringup-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Battery" :depends-on ("_package_Battery"))
    (:file "_package_Battery" :depends-on ("_package"))
    (:file "Calg" :depends-on ("_package_Calg"))
    (:file "_package_Calg" :depends-on ("_package"))
    (:file "Color" :depends-on ("_package_Color"))
    (:file "_package_Color" :depends-on ("_package"))
    (:file "ResetOdom" :depends-on ("_package_ResetOdom"))
    (:file "_package_ResetOdom" :depends-on ("_package"))
    (:file "SaveColor" :depends-on ("_package_SaveColor"))
    (:file "_package_SaveColor" :depends-on ("_package"))
  ))