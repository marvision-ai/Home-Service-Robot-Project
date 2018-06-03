# home_service_robot

### To Run this project

`git clone https://github.com/mbufi/home_service_robot/` to downloads.

Navigate to `catkin_ws\src` and copy all the contents in `home_service_robot` into that folder. (do not over write the CMAKELISTS) 

Once all folders are in `src`, navigate to `catkin_ws` and run `$catkin_make` to build the project.

Then source the environment `$ source devel/setup.bash`

Navigate to `catkin_ws\src\ShellScripts` and run `./home_service.sh`. (Make you have modified its permissions to be executable)

Then sit back and watch it move to the target location, wait, and the proceed back to where it came from.



### Official ROS packages this Project requires: 

To get this project to work, import these packages and install them in the src directory of your catkin workspace. Be sure to clone the full GitHub directory and not just the package itself.

1. gmapping: With the gmapping_demo.launch file, you can easily perform SLAM and build a map of the environment with a robot equipped with laser range finder sensors or RGB-D cameras.
2. turtlebot_teleop: With the keyboard_teleop.launch file, you can manually control a robot using keyboard commands.
3. turtlebot_rviz_launchers: With the view_navigation.launch file, you can load a preconfigured rviz workspace. You’ll save a lot of time by launching this file, because it will automatically load the robot model, trajectories, and map for you.
4. turtlebot_gazebo: With the turtlebot_world.launch you can deploy a turtlebot in a gazebo environment by linking the world file to it.


### Additional packages developed for this project: 
These are the packages that will be placed in the `catkin/src` directory of your workspace when you clone this repo: 

1. World: Location to store the gazebo world file and the map generated from SLAM.
2. ShellScripts: Location to store all the required shell scripts. NOTE: Make sure to allow all the be executable. 
3. RvizConfig: Location to store the customized rviz configuration files.
4. wall_follower: Location to store a wall_follower node that will autonomously drive your robot around to perform SLAM.
5. pick_objects: A node that commands your robot to drive to the pickup and drop off zones.
6. add_markers: A node that models the object with a marker in rviz.
