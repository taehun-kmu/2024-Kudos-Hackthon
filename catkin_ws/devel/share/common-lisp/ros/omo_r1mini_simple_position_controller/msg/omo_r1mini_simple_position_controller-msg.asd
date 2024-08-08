
(cl:in-package :asdf)

(defsystem "omo_r1mini_simple_position_controller-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :actionlib_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "VanillaPositionAction" :depends-on ("_package_VanillaPositionAction"))
    (:file "_package_VanillaPositionAction" :depends-on ("_package"))
    (:file "VanillaPositionActionFeedback" :depends-on ("_package_VanillaPositionActionFeedback"))
    (:file "_package_VanillaPositionActionFeedback" :depends-on ("_package"))
    (:file "VanillaPositionActionGoal" :depends-on ("_package_VanillaPositionActionGoal"))
    (:file "_package_VanillaPositionActionGoal" :depends-on ("_package"))
    (:file "VanillaPositionActionResult" :depends-on ("_package_VanillaPositionActionResult"))
    (:file "_package_VanillaPositionActionResult" :depends-on ("_package"))
    (:file "VanillaPositionFeedback" :depends-on ("_package_VanillaPositionFeedback"))
    (:file "_package_VanillaPositionFeedback" :depends-on ("_package"))
    (:file "VanillaPositionGoal" :depends-on ("_package_VanillaPositionGoal"))
    (:file "_package_VanillaPositionGoal" :depends-on ("_package"))
    (:file "VanillaPositionResult" :depends-on ("_package_VanillaPositionResult"))
    (:file "_package_VanillaPositionResult" :depends-on ("_package"))
  ))