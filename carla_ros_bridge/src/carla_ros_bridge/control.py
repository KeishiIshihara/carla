"""
Class to handle control input
"""

import math
import numpy as np
import rospy

# from ackermann_msgs.msg import AckermannDrive
from ackermann_msgs.msg import AckermannDriveStamped
from sensor_msgs.msg import Joy


class InputController(object):
    """
    Class to handle ros input command

    Each time a ros control msg (an ackermann_cmd msg) is received on control topic, a carla control message is
    computed.
    """

    def __init__(self, topic_name='/ackermann_cmd'):
        # current control command
        self.cur_control = {
            'steer': 0.0,
            'throttle': 0.0,
            'brake': 0.0,
            'hand_brake': False,
            'reverse': False
        }

        # self.cmd_vel_subscriber = rospy.Subscriber('/ackermann_cmd', AckermannDrive, self.set_control_cmd_callback)
        self.cmd_vel_subscriber = rospy.Subscriber('/ackermann_cmd_stamped', AckermannDriveStamped, self.set_control_cmd_callback)

    def set_control_cmd_callback(self, data):
        """
        Convert a Ackerman drive msg into carla control msg

        Right now the control is really simple and don't enforce acceleration and jerk command, nor the steering acceleration too
        :param data: AckermannDriveStamped msg
        :return:
        """
        steering_angle_ctrl = data.drive.steering_angle
        speed_ctrl = 18.0 * data.drive.speed # 18 is best
        brake_ctrl = 0.

        max_steering_angle = math.radians(
            500
        )  # 500 degrees is the max steering angle that I have on my car,
        #  would be nice if we could use the value provided by carla
        max_speed = 27  # just a value for me, 27 m/sec seems to be a reasonable max speed for now

        control = {}

        if abs(steering_angle_ctrl) > max_steering_angle:
            rospy.logerr("Max steering angle reached, clipping value")
            steering_angle_ctrl = np.clip(
                steering_angle_ctrl, -max_steering_angle, max_steering_angle)

        if abs(speed_ctrl) > max_speed:
            rospy.logerr("Max speed reached, clipping value")
            speed_ctrl = np.clip(speed_ctrl, -max_speed, max_speed)

        if data.drive.jerk > 1.0:
            brake_ctrl = 1.0
        else:
            brake_ctrl = data.drive.jerk

        control['steer'] = steering_angle_ctrl / max_steering_angle
        control['throttle'] = abs(speed_ctrl / max_speed)
        control['reverse'] = True if speed_ctrl < 0 else False
        control['brake'] = brake_ctrl


        self.cur_control = control
