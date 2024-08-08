# Install script for directory: /home/jetson/2024-Kudos-Hackthon/catkin_ws/src/omo_r1mini/omo_r1mini_simple_position_controller

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/jetson/2024-Kudos-Hackthon/catkin_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/omo_r1mini_simple_position_controller/action" TYPE FILE FILES "/home/jetson/2024-Kudos-Hackthon/catkin_ws/src/omo_r1mini/omo_r1mini_simple_position_controller/action/VanillaPosition.action")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/omo_r1mini_simple_position_controller/msg" TYPE FILE FILES
    "/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionAction.msg"
    "/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionActionGoal.msg"
    "/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionActionResult.msg"
    "/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionActionFeedback.msg"
    "/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionGoal.msg"
    "/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionResult.msg"
    "/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/omo_r1mini_simple_position_controller/msg/VanillaPositionFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/omo_r1mini_simple_position_controller/cmake" TYPE FILE FILES "/home/jetson/2024-Kudos-Hackthon/catkin_ws/build/omo_r1mini/omo_r1mini_simple_position_controller/catkin_generated/installspace/omo_r1mini_simple_position_controller-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/include/omo_r1mini_simple_position_controller")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/roseus/ros/omo_r1mini_simple_position_controller")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/common-lisp/ros/omo_r1mini_simple_position_controller")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/gennodejs/ros/omo_r1mini_simple_position_controller")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/lib/python3/dist-packages/omo_r1mini_simple_position_controller")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/lib/python3/dist-packages/omo_r1mini_simple_position_controller")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/jetson/2024-Kudos-Hackthon/catkin_ws/build/omo_r1mini/omo_r1mini_simple_position_controller/catkin_generated/installspace/omo_r1mini_simple_position_controller.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/omo_r1mini_simple_position_controller/cmake" TYPE FILE FILES "/home/jetson/2024-Kudos-Hackthon/catkin_ws/build/omo_r1mini/omo_r1mini_simple_position_controller/catkin_generated/installspace/omo_r1mini_simple_position_controller-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/omo_r1mini_simple_position_controller/cmake" TYPE FILE FILES
    "/home/jetson/2024-Kudos-Hackthon/catkin_ws/build/omo_r1mini/omo_r1mini_simple_position_controller/catkin_generated/installspace/omo_r1mini_simple_position_controllerConfig.cmake"
    "/home/jetson/2024-Kudos-Hackthon/catkin_ws/build/omo_r1mini/omo_r1mini_simple_position_controller/catkin_generated/installspace/omo_r1mini_simple_position_controllerConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/omo_r1mini_simple_position_controller" TYPE FILE FILES "/home/jetson/2024-Kudos-Hackthon/catkin_ws/src/omo_r1mini/omo_r1mini_simple_position_controller/package.xml")
endif()

