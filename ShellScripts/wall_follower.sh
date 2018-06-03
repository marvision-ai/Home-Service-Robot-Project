#!/bin/sh
##################################################################
#
# Udacity Term 2 Home Service Project launch script
#          Martin Bufi June 2018
#
# Automate the process to let the robot follow the walls and 
# autonomously map the environment while avoiding obstacles. 
#
################################################################

xterm  -e  "export TURTLEBOT_GAZEBO_WORLD_FILE=~/catkin_ws/src/World/house.world; source ~/catkin_ws/devel/setup.bash; roslaunch turtlebot_gazebo turtlebot_world.launch" &
sleep 5
xterm  -e  "source ~/catkin_ws/devel/setup.bash; roslaunch home_services_robot gmapping.launch" &
sleep 5
xterm  -e  "source ~/catkin_ws/devel/setup.bash; roslaunch turtlebot_rviz_launchers view_navigation.launch" &
sleep 5
xterm  -e  "source ~/catkin_ws/devel/setup.bash; rosrun wall_follower wall_follower" &

