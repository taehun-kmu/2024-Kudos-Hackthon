#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/jetson/2024-Kudos-Hackthon/catkin_ws/src/omo_r1mini/omo_r1mini_teleop"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/jetson/2024-Kudos-Hackthon/catkin_ws/install/lib/python3/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/jetson/2024-Kudos-Hackthon/catkin_ws/install/lib/python3/dist-packages:/home/jetson/2024-Kudos-Hackthon/catkin_ws/build/lib/python3/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/jetson/2024-Kudos-Hackthon/catkin_ws/build" \
    "/usr/bin/python3" \
    "/home/jetson/2024-Kudos-Hackthon/catkin_ws/src/omo_r1mini/omo_r1mini_teleop/setup.py" \
     \
    build --build-base "/home/jetson/2024-Kudos-Hackthon/catkin_ws/build/omo_r1mini/omo_r1mini_teleop" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/jetson/2024-Kudos-Hackthon/catkin_ws/install" --install-scripts="/home/jetson/2024-Kudos-Hackthon/catkin_ws/install/bin"
