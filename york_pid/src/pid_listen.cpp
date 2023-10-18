#include "yorkrobot_pid/yorkrobot_pid_core.h"

int main(int argc, char **argv)
{

  ros::init(argc, argv, "pid_listener");
  ros::NodeHandle nh;

  int rate;

  ros::NodeHandle pnh("~");
  pnh.param("rate", rate, int(40));

  ClbrobotPID *yorkrobot_pid = new ClbrobotPID();

  ros::Subscriber sub_message = nh.subscribe("pid", 1000, &ClbrobotPID::messageCallback, yorkrobot_pid);

  ros::Rate r(rate);

  // Main loop.
  while (nh.ok())
  {
    ros::spinOnce();
    r.sleep();
  }

  return 0;
} // end main()
