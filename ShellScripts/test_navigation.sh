#!/bin/sh
##################################################################
#
# Udacity Term 2 Home Service Project launch script
#          Martin Bufi June 2018
#
# Manually point out to two different goals, one at a time, 
# and direct your robot to reach them and orient itself with 
# respect to them.
################################################################
xterm  -e  "export TURTLEBOT_GAZEBO_WORLD_FILE=~/catkin_ws/src/World/house.world; source ~/catkin_ws/devel/setup.bash; roslaunch turtlebot_gazebo turtlebot_world.launch" &
sleep 5
xterm  -e  "source ~/catkin_ws/devel/setup.bash; roslaunch home_services_robot amcl.launch" &
sleep 5
xterm  -e  "source ~/catkin_ws/devel/setup.bash; roslaunch turtlebot_rviz_launchers view_navigation.launch" &



