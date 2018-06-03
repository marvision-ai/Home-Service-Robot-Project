##################################################################
#
# Udacity Term 2 Home Service Project launch script
#          Martin Bufi June 2018
#
# Navigate to two goals.
# The first goal should be your desired pickup goal and the second goal
# should be your desired drop off goal. The robot has to travel to the
# desired pickup zone, display a message that it reached its destination,
# wait 5 seconds, travel to the desired drop off zone, and display a 
# message that it reached the drop off zone.
#
################################################################
xterm  -e  "export TURTLEBOT_GAZEBO_WORLD_FILE=~/catkin_ws/src/World/house.world; source ~/catkin_ws/devel/setup.bash; roslaunch turtlebot_gazebo turtlebot_world.launch" &
sleep 5
xterm  -e  "source ~/catkin_ws/devel/setup.bash; roslaunch home_services_robot amcl.launch" &
sleep 5
xterm  -e  "source ~/catkin_ws/devel/setup.bash; roslaunch turtlebot_rviz_launchers view_navigation.launch" &
sleep 5
xterm  -e  "source ~/catkin_ws/devel/setup.bash; rosrun pick_objects pick_objects" &


