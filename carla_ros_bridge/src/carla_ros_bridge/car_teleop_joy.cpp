#include <ros/ros.h>
//#include <geometry_msgs/Twist.h>
#include <sensor_msgs/Joy.h>
#include <ackermann_msgs/AckermannDriveStamped.h>
#include <ackermann_msgs/AckermannDrive.h>



class TeleopVehicle
{
public:
  TeleopVehicle();
  

private:
  void joyCallback(const sensor_msgs::Joy::ConstPtr& joy);

  ros::NodeHandle nh_;

  int linear_, angular_;
  double l_scale_, a_scale_;
  ros::Publisher vel_pub_;
  ros::Publisher stamped_vel_pub_;
  ros::Publisher pub_;
  ros::Subscriber joy_sub_;

};


TeleopVehicle::TeleopVehicle():
  linear_(1),
  angular_(2)
{

  nh_.param("axis_linear", linear_, linear_);
  nh_.param("axis_angular", angular_, angular_);
  nh_.param("scale_angular", a_scale_, a_scale_);
  nh_.param("scale_linear", l_scale_, l_scale_);

  


  vel_pub_ = nh_.advertise<ackermann_msgs::AckermannDrive>("ackermann_cmd", 1);

  stamped_vel_pub_ = nh_.advertise<ackermann_msgs::AckermannDriveStamped>("ackermann_cmd_stamped", 1);


  joy_sub_ = nh_.subscribe<sensor_msgs::Joy>("joy", 10, &TeleopVehicle::joyCallback, this);

  //pub_ = nh_.advertise<>

}

void TeleopVehicle::joyCallback(const sensor_msgs::Joy::ConstPtr& joy)
{
  /*geometry_msgs::Twist twist;
  twist.angular.z = a_scale_*joy->axes[angular_];
  twist.linear.x = l_scale_*joy->axes[linear_];
  vel_pub_.publish(twist);*/

  ackermann_msgs::AckermannDriveStamped drive_stamped;
  ackermann_msgs::AckermannDrive drive;
  drive_stamped.header.stamp = ros::Time::now();

  int gear_low = 12;
  int gear_second = 13;
  int gear_third = 14;
  int gear_reverse = 17;
  
  // drive.steering_angle = a_scale_*joy->axes[angular_];
  // drive.speed = l_scale_*joy->axes[linear_];

  drive.speed = 0;
  drive.steering_angle = 0;
  if(joy->buttons[gear_low] == 1){
    drive.speed = l_scale_ * (joy->axes[linear_] + 1.0);
    drive.steering_angle = -1 * a_scale_ * joy->axes[angular_];
  }
  if(joy->buttons[gear_reverse] == 1){
    drive.speed = -1 * l_scale_ * (joy->axes[linear_] + 1.0);
    drive.steering_angle = -1 * a_scale_ * joy->axes[angular_];
  }
  drive.jerk = (joy->axes[3] + 1.0);
  // ROS_INFO("linear_:%d,  angular_:%d \n",linear_, angular_);
  //printf("a:%d + b:%d = %d\n",msg.a , msg.b, result );
  vel_pub_.publish(drive);
  drive_stamped.drive = drive;
  stamped_vel_pub_.publish(drive_stamped);
}


int main(int argc, char** argv)
{
  ros::init(argc, argv, "teleop_vehicle");
  TeleopVehicle teleop_vehicle;

  ros::spin();
}
