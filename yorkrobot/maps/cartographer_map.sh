rm -rf /home/yorkrobot/catkin_ws/src/yorkrobot_project/yorkrobot/maps/house.pgm 
rm -rf /home/yorkrobot/catkin_ws/src/yorkrobot_project/yorkrobot/maps/house.yaml

rosservice call /write_state /home/yorkrobot/catkin_ws/src/yorkrobot_project/yorkrobot/maps/map.bag.pbstream

rosrun cartographer_ros cartographer_pbstream_to_ros_map -pbstream_filename=/home/yorkrobot/catkin_ws/src/yorkrobot_project/yorkrobot/maps/map.bag.pbstream


cp  /home/yorkrobot/catkin_ws/src/yorkrobot_project/yorkrobot/maps/map.pgm /home/yorkrobot/catkin_ws/src/yorkrobot_project/yorkrobot/maps/house.pgm

cp  /home/yorkrobot/catkin_ws/src/yorkrobot_project/yorkrobot/maps/map.yaml /home/yorkrobot/catkin_ws/src/yorkrobot_project/yorkrobot/maps/house.yaml

