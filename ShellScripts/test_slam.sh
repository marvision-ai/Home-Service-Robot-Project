#!/bin/sh
##################################################################
#
# Udacity Term 2 Home Service Project launch script
#          Martin Bufi June 2018
#
# Test SLAM operation by using interactive markers or 
# teleop_keyboard to create a map.
#
################################################################

xterm  -e  "export TURTLEBOT_GAZEBO_WORLD_FILE=~/catkin_ws/src/World/house.world; source ~/catkin_ws/devel/setup.bash; roslaunch turtlebot_gazebo turtlebot_world.launch" &
sleep 5
xterm  -e  "source ~/catkin_ws/devel/setup.bash; roslaunch home_services_robot gmapping.launch" &
sleep 5
xterm  -e  "source ~/catkin_ws/devel/setup.bash; roslaunch turtlebot_rviz_launchers view_navigation.launch" &
sleep 5
xterm  -e  "source ~/catkin-ws/devel/setup.bash; roslaunch turtlebot_teleop keyboard_teleop.launch" &

