# Install script for directory: /home/jetson/2024-Kudos-Hackthon/catkin_ws/src/omo_r1mini/omo_r1mini_bringup

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/omo_r1mini_bringup/srv" TYPE FILE FILES
    "/home/jetson/2024-Kudos-Hackthon/catkin_ws/src/omo_r1mini/omo_r1mini_bringup/srv/Battery.srv"
    "/home/jetson/2024-Kudos-Hackthon/catkin_ws/src/omo_r1mini/omo_r1mini_bringup/srv/Color.srv"
    "/home/jetson/2024-Kudos-Hackthon/catkin_ws/src/omo_r1mini/omo_r1mini_bringup/srv/SaveColor.srv"
    "/home/jetson/2024-Kudos-Hackthon/catkin_ws/src/omo_r1mini/omo_r1mini_bringup/srv/ResetOdom.srv"
    "/home/jetson/2024-Kudos-Hackthon/catkin_ws/src/omo_r1mini/omo_r1mini_bringup/srv/Calg.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  include("/home/jetson/2024-Kudos-Hackthon/catkin_ws/build/omo_r1mini/omo_r1mini_bringup/catkin_generated/safe_execute_install.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/omo_r1mini_bringup/cmake" TYPE FILE FILES "/home/jetson/2024-Kudos-Hackthon/catkin_ws/build/omo_r1mini/omo_r1mini_bringup/catkin_generated/installspace/omo_r1mini_bringup-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/include/omo_r1mini_bringup")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/roseus/ros/omo_r1mini_bringup")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/common-lisp/ros/omo_r1mini_bringup")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/share/gennodejs/ros/omo_r1mini_bringup")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/lib/python3/dist-packages/omo_r1mini_bringup")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/lib/python3/dist-packages/omo_r1mini_bringup" REGEX "/\\_\\_init\\_\\_\\.py$" EXCLUDE REGEX "/\\_\\_init\\_\\_\\.pyc$" EXCLUDE)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/lib/python3/dist-packages/omo_r1mini_bringup" FILES_MATCHING REGEX "/home/jetson/2024-Kudos-Hackthon/catkin_ws/devel/lib/python3/dist-packages/omo_r1mini_bringup/.+/__init__.pyc?$")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/jetson/2024-Kudos-Hackthon/catkin_ws/build/omo_r1mini/omo_r1mini_bringup/catkin_generated/installspace/omo_r1mini_bringup.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/omo_r1mini_bringup/cmake" TYPE FILE FILES "/home/jetson/2024-Kudos-Hackthon/catkin_ws/build/omo_r1mini/omo_r1mini_bringup/catkin_generated/installspace/omo_r1mini_bringup-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/omo_r1mini_bringup/cmake" TYPE FILE FILES
    "/home/jetson/2024-Kudos-Hackthon/catkin_ws/build/omo_r1mini/omo_r1mini_bringup/catkin_generated/installspace/omo_r1mini_bringupConfig.cmake"
    "/home/jetson/2024-Kudos-Hackthon/catkin_ws/build/omo_r1mini/omo_r1mini_bringup/catkin_generated/installspace/omo_r1mini_bringupConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/omo_r1mini_bringup" TYPE FILE FILES "/home/jetson/2024-Kudos-Hackthon/catkin_ws/src/omo_r1mini/omo_r1mini_bringup/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/omo_r1mini_bringup" TYPE PROGRAM FILES "/home/jetson/2024-Kudos-Hackthon/catkin_ws/build/omo_r1mini/omo_r1mini_bringup/catkin_generated/installspace/omo_packet_handler.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/omo_r1mini_bringup" TYPE PROGRAM FILES "/home/jetson/2024-Kudos-Hackthon/catkin_ws/build/omo_r1mini/omo_r1mini_bringup/catkin_generated/installspace/omo_r1mini_node.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/omo_r1mini_bringup" TYPE DIRECTORY FILES "/home/jetson/2024-Kudos-Hackthon/catkin_ws/src/omo_r1mini/omo_r1mini_bringup/launch")
endif()

