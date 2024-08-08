# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "omo_r1mini_simple_position_controller: 7 messages, 0 services")

set(MSG_I_FLAGS "-Iomo_r1mini_simple_position_controller:/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/melodic/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(omo_r1mini_simple_position_controller_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionAction.msg" NAME_WE)
add_custom_target(_omo_r1mini_simple_position_controller_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "omo_r1mini_simple_position_controller" "/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionAction.msg" "omo_r1mini_simple_position_controller/VanillaPositionResult:omo_r1mini_simple_position_controller/VanillaPositionActionGoal:std_msgs/Header:omo_r1mini_simple_position_controller/VanillaPositionActionResult:actionlib_msgs/GoalID:omo_r1mini_simple_position_controller/VanillaPositionActionFeedback:actionlib_msgs/GoalStatus:omo_r1mini_simple_position_controller/VanillaPositionFeedback:omo_r1mini_simple_position_controller/VanillaPositionGoal"
)

get_filename_component(_filename "/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionActionGoal.msg" NAME_WE)
add_custom_target(_omo_r1mini_simple_position_controller_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "omo_r1mini_simple_position_controller" "/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionActionGoal.msg" "std_msgs/Header:actionlib_msgs/GoalID:omo_r1mini_simple_position_controller/VanillaPositionGoal"
)

get_filename_component(_filename "/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionActionResult.msg" NAME_WE)
add_custom_target(_omo_r1mini_simple_position_controller_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "omo_r1mini_simple_position_controller" "/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionActionResult.msg" "std_msgs/Header:actionlib_msgs/GoalID:omo_r1mini_simple_position_controller/VanillaPositionResult:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionActionFeedback.msg" NAME_WE)
add_custom_target(_omo_r1mini_simple_position_controller_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "omo_r1mini_simple_position_controller" "/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionActionFeedback.msg" "std_msgs/Header:actionlib_msgs/GoalID:actionlib_msgs/GoalStatus:omo_r1mini_simple_position_controller/VanillaPositionFeedback"
)

get_filename_component(_filename "/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionGoal.msg" NAME_WE)
add_custom_target(_omo_r1mini_simple_position_controller_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "omo_r1mini_simple_position_controller" "/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionGoal.msg" ""
)

get_filename_component(_filename "/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionResult.msg" NAME_WE)
add_custom_target(_omo_r1mini_simple_position_controller_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "omo_r1mini_simple_position_controller" "/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionResult.msg" ""
)

get_filename_component(_filename "/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionFeedback.msg" NAME_WE)
add_custom_target(_omo_r1mini_simple_position_controller_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "omo_r1mini_simple_position_controller" "/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionFeedback.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(omo_r1mini_simple_position_controller
  "/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionAction.msg"
  "${MSG_I_FLAGS}"
  "/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionResult.msg;/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionActionGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionActionResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionActionFeedback.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionFeedback.msg;/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/omo_r1mini_simple_position_controller
)
_generate_msg_cpp(omo_r1mini_simple_position_controller
  "/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/omo_r1mini_simple_position_controller
)
_generate_msg_cpp(omo_r1mini_simple_position_controller
  "/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/omo_r1mini_simple_position_controller
)
_generate_msg_cpp(omo_r1mini_simple_position_controller
  "/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/omo_r1mini_simple_position_controller
)
_generate_msg_cpp(omo_r1mini_simple_position_controller
  "/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/omo_r1mini_simple_position_controller
)
_generate_msg_cpp(omo_r1mini_simple_position_controller
  "/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/omo_r1mini_simple_position_controller
)
_generate_msg_cpp(omo_r1mini_simple_position_controller
  "/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/omo_r1mini_simple_position_controller
)

### Generating Services

### Generating Module File
_generate_module_cpp(omo_r1mini_simple_position_controller
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/omo_r1mini_simple_position_controller
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(omo_r1mini_simple_position_controller_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(omo_r1mini_simple_position_controller_generate_messages omo_r1mini_simple_position_controller_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionAction.msg" NAME_WE)
add_dependencies(omo_r1mini_simple_position_controller_generate_messages_cpp _omo_r1mini_simple_position_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionActionGoal.msg" NAME_WE)
add_dependencies(omo_r1mini_simple_position_controller_generate_messages_cpp _omo_r1mini_simple_position_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionActionResult.msg" NAME_WE)
add_dependencies(omo_r1mini_simple_position_controller_generate_messages_cpp _omo_r1mini_simple_position_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionActionFeedback.msg" NAME_WE)
add_dependencies(omo_r1mini_simple_position_controller_generate_messages_cpp _omo_r1mini_simple_position_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionGoal.msg" NAME_WE)
add_dependencies(omo_r1mini_simple_position_controller_generate_messages_cpp _omo_r1mini_simple_position_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionResult.msg" NAME_WE)
add_dependencies(omo_r1mini_simple_position_controller_generate_messages_cpp _omo_r1mini_simple_position_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionFeedback.msg" NAME_WE)
add_dependencies(omo_r1mini_simple_position_controller_generate_messages_cpp _omo_r1mini_simple_position_controller_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(omo_r1mini_simple_position_controller_gencpp)
add_dependencies(omo_r1mini_simple_position_controller_gencpp omo_r1mini_simple_position_controller_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS omo_r1mini_simple_position_controller_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(omo_r1mini_simple_position_controller
  "/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionAction.msg"
  "${MSG_I_FLAGS}"
  "/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionResult.msg;/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionActionGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionActionResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionActionFeedback.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionFeedback.msg;/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/omo_r1mini_simple_position_controller
)
_generate_msg_eus(omo_r1mini_simple_position_controller
  "/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/omo_r1mini_simple_position_controller
)
_generate_msg_eus(omo_r1mini_simple_position_controller
  "/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/omo_r1mini_simple_position_controller
)
_generate_msg_eus(omo_r1mini_simple_position_controller
  "/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/omo_r1mini_simple_position_controller
)
_generate_msg_eus(omo_r1mini_simple_position_controller
  "/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/omo_r1mini_simple_position_controller
)
_generate_msg_eus(omo_r1mini_simple_position_controller
  "/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/omo_r1mini_simple_position_controller
)
_generate_msg_eus(omo_r1mini_simple_position_controller
  "/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/omo_r1mini_simple_position_controller
)

### Generating Services

### Generating Module File
_generate_module_eus(omo_r1mini_simple_position_controller
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/omo_r1mini_simple_position_controller
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(omo_r1mini_simple_position_controller_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(omo_r1mini_simple_position_controller_generate_messages omo_r1mini_simple_position_controller_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionAction.msg" NAME_WE)
add_dependencies(omo_r1mini_simple_position_controller_generate_messages_eus _omo_r1mini_simple_position_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionActionGoal.msg" NAME_WE)
add_dependencies(omo_r1mini_simple_position_controller_generate_messages_eus _omo_r1mini_simple_position_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionActionResult.msg" NAME_WE)
add_dependencies(omo_r1mini_simple_position_controller_generate_messages_eus _omo_r1mini_simple_position_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionActionFeedback.msg" NAME_WE)
add_dependencies(omo_r1mini_simple_position_controller_generate_messages_eus _omo_r1mini_simple_position_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionGoal.msg" NAME_WE)
add_dependencies(omo_r1mini_simple_position_controller_generate_messages_eus _omo_r1mini_simple_position_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionResult.msg" NAME_WE)
add_dependencies(omo_r1mini_simple_position_controller_generate_messages_eus _omo_r1mini_simple_position_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionFeedback.msg" NAME_WE)
add_dependencies(omo_r1mini_simple_position_controller_generate_messages_eus _omo_r1mini_simple_position_controller_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(omo_r1mini_simple_position_controller_geneus)
add_dependencies(omo_r1mini_simple_position_controller_geneus omo_r1mini_simple_position_controller_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS omo_r1mini_simple_position_controller_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(omo_r1mini_simple_position_controller
  "/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionAction.msg"
  "${MSG_I_FLAGS}"
  "/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionResult.msg;/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionActionGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionActionResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionActionFeedback.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionFeedback.msg;/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/omo_r1mini_simple_position_controller
)
_generate_msg_lisp(omo_r1mini_simple_position_controller
  "/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/omo_r1mini_simple_position_controller
)
_generate_msg_lisp(omo_r1mini_simple_position_controller
  "/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/omo_r1mini_simple_position_controller
)
_generate_msg_lisp(omo_r1mini_simple_position_controller
  "/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/omo_r1mini_simple_position_controller
)
_generate_msg_lisp(omo_r1mini_simple_position_controller
  "/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/omo_r1mini_simple_position_controller
)
_generate_msg_lisp(omo_r1mini_simple_position_controller
  "/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/omo_r1mini_simple_position_controller
)
_generate_msg_lisp(omo_r1mini_simple_position_controller
  "/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/omo_r1mini_simple_position_controller
)

### Generating Services

### Generating Module File
_generate_module_lisp(omo_r1mini_simple_position_controller
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/omo_r1mini_simple_position_controller
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(omo_r1mini_simple_position_controller_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(omo_r1mini_simple_position_controller_generate_messages omo_r1mini_simple_position_controller_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionAction.msg" NAME_WE)
add_dependencies(omo_r1mini_simple_position_controller_generate_messages_lisp _omo_r1mini_simple_position_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionActionGoal.msg" NAME_WE)
add_dependencies(omo_r1mini_simple_position_controller_generate_messages_lisp _omo_r1mini_simple_position_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionActionResult.msg" NAME_WE)
add_dependencies(omo_r1mini_simple_position_controller_generate_messages_lisp _omo_r1mini_simple_position_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionActionFeedback.msg" NAME_WE)
add_dependencies(omo_r1mini_simple_position_controller_generate_messages_lisp _omo_r1mini_simple_position_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionGoal.msg" NAME_WE)
add_dependencies(omo_r1mini_simple_position_controller_generate_messages_lisp _omo_r1mini_simple_position_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionResult.msg" NAME_WE)
add_dependencies(omo_r1mini_simple_position_controller_generate_messages_lisp _omo_r1mini_simple_position_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionFeedback.msg" NAME_WE)
add_dependencies(omo_r1mini_simple_position_controller_generate_messages_lisp _omo_r1mini_simple_position_controller_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(omo_r1mini_simple_position_controller_genlisp)
add_dependencies(omo_r1mini_simple_position_controller_genlisp omo_r1mini_simple_position_controller_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS omo_r1mini_simple_position_controller_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(omo_r1mini_simple_position_controller
  "/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionAction.msg"
  "${MSG_I_FLAGS}"
  "/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionResult.msg;/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionActionGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionActionResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionActionFeedback.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionFeedback.msg;/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/omo_r1mini_simple_position_controller
)
_generate_msg_nodejs(omo_r1mini_simple_position_controller
  "/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/omo_r1mini_simple_position_controller
)
_generate_msg_nodejs(omo_r1mini_simple_position_controller
  "/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/omo_r1mini_simple_position_controller
)
_generate_msg_nodejs(omo_r1mini_simple_position_controller
  "/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/omo_r1mini_simple_position_controller
)
_generate_msg_nodejs(omo_r1mini_simple_position_controller
  "/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/omo_r1mini_simple_position_controller
)
_generate_msg_nodejs(omo_r1mini_simple_position_controller
  "/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/omo_r1mini_simple_position_controller
)
_generate_msg_nodejs(omo_r1mini_simple_position_controller
  "/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/omo_r1mini_simple_position_controller
)

### Generating Services

### Generating Module File
_generate_module_nodejs(omo_r1mini_simple_position_controller
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/omo_r1mini_simple_position_controller
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(omo_r1mini_simple_position_controller_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(omo_r1mini_simple_position_controller_generate_messages omo_r1mini_simple_position_controller_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionAction.msg" NAME_WE)
add_dependencies(omo_r1mini_simple_position_controller_generate_messages_nodejs _omo_r1mini_simple_position_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionActionGoal.msg" NAME_WE)
add_dependencies(omo_r1mini_simple_position_controller_generate_messages_nodejs _omo_r1mini_simple_position_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionActionResult.msg" NAME_WE)
add_dependencies(omo_r1mini_simple_position_controller_generate_messages_nodejs _omo_r1mini_simple_position_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionActionFeedback.msg" NAME_WE)
add_dependencies(omo_r1mini_simple_position_controller_generate_messages_nodejs _omo_r1mini_simple_position_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionGoal.msg" NAME_WE)
add_dependencies(omo_r1mini_simple_position_controller_generate_messages_nodejs _omo_r1mini_simple_position_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionResult.msg" NAME_WE)
add_dependencies(omo_r1mini_simple_position_controller_generate_messages_nodejs _omo_r1mini_simple_position_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionFeedback.msg" NAME_WE)
add_dependencies(omo_r1mini_simple_position_controller_generate_messages_nodejs _omo_r1mini_simple_position_controller_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(omo_r1mini_simple_position_controller_gennodejs)
add_dependencies(omo_r1mini_simple_position_controller_gennodejs omo_r1mini_simple_position_controller_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS omo_r1mini_simple_position_controller_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(omo_r1mini_simple_position_controller
  "/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionAction.msg"
  "${MSG_I_FLAGS}"
  "/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionResult.msg;/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionActionGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionActionResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionActionFeedback.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionFeedback.msg;/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/omo_r1mini_simple_position_controller
)
_generate_msg_py(omo_r1mini_simple_position_controller
  "/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/omo_r1mini_simple_position_controller
)
_generate_msg_py(omo_r1mini_simple_position_controller
  "/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/omo_r1mini_simple_position_controller
)
_generate_msg_py(omo_r1mini_simple_position_controller
  "/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/omo_r1mini_simple_position_controller
)
_generate_msg_py(omo_r1mini_simple_position_controller
  "/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/omo_r1mini_simple_position_controller
)
_generate_msg_py(omo_r1mini_simple_position_controller
  "/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/omo_r1mini_simple_position_controller
)
_generate_msg_py(omo_r1mini_simple_position_controller
  "/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/omo_r1mini_simple_position_controller
)

### Generating Services

### Generating Module File
_generate_module_py(omo_r1mini_simple_position_controller
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/omo_r1mini_simple_position_controller
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(omo_r1mini_simple_position_controller_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(omo_r1mini_simple_position_controller_generate_messages omo_r1mini_simple_position_controller_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionAction.msg" NAME_WE)
add_dependencies(omo_r1mini_simple_position_controller_generate_messages_py _omo_r1mini_simple_position_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionActionGoal.msg" NAME_WE)
add_dependencies(omo_r1mini_simple_position_controller_generate_messages_py _omo_r1mini_simple_position_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionActionResult.msg" NAME_WE)
add_dependencies(omo_r1mini_simple_position_controller_generate_messages_py _omo_r1mini_simple_position_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionActionFeedback.msg" NAME_WE)
add_dependencies(omo_r1mini_simple_position_controller_generate_messages_py _omo_r1mini_simple_position_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionGoal.msg" NAME_WE)
add_dependencies(omo_r1mini_simple_position_controller_generate_messages_py _omo_r1mini_simple_position_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionResult.msg" NAME_WE)
add_dependencies(omo_r1mini_simple_position_controller_generate_messages_py _omo_r1mini_simple_position_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionFeedback.msg" NAME_WE)
add_dependencies(omo_r1mini_simple_position_controller_generate_messages_py _omo_r1mini_simple_position_controller_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(omo_r1mini_simple_position_controller_genpy)
add_dependencies(omo_r1mini_simple_position_controller_genpy omo_r1mini_simple_position_controller_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS omo_r1mini_simple_position_controller_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/omo_r1mini_simple_position_controller)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/omo_r1mini_simple_position_controller
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(omo_r1mini_simple_position_controller_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(omo_r1mini_simple_position_controller_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/omo_r1mini_simple_position_controller)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/omo_r1mini_simple_position_controller
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(omo_r1mini_simple_position_controller_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(omo_r1mini_simple_position_controller_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/omo_r1mini_simple_position_controller)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/omo_r1mini_simple_position_controller
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(omo_r1mini_simple_position_controller_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(omo_r1mini_simple_position_controller_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/omo_r1mini_simple_position_controller)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/omo_r1mini_simple_position_controller
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(omo_r1mini_simple_position_controller_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(omo_r1mini_simple_position_controller_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/omo_r1mini_simple_position_controller)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/omo_r1mini_simple_position_controller\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/omo_r1mini_simple_position_controller
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(omo_r1mini_simple_position_controller_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(omo_r1mini_simple_position_controller_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
