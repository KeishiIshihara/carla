#!/usr/bin/env python
# -*- coding: utf-8 -*-

import rospy
import message_filters
import os
import sys
import math

from ackermann_msgs.msg import AckermannDriveStamped

class Displaycmd:
    def __init__(self):
        # Initialization
        self.msg_count = 1
    def callback(self, cmd):
        steer = cmd.drive.steering_angle
        throttle = cmd.drive.speed
        brake = cmd.drive.jerk

        self.msg_count += 1
        # print('msg_count : '+str(self.msg_count))
        print('---')
        print('steering : '+str(steer))
        print('throttle : '+str(throttle))
        print('brake : '+str(brake))
        print('')


def main(args):
    dc = Displaycmd()
    rospy.init_node('discmd_node', anonymous=True)
    try:
        rospy.Subscriber('/ackermann_cmd_stamped', AckermannDriveStamped, dc.callback)
        rospy.spin()
    except KeyboardInterrupt:
        print "Shutting down ROS module"
        del cd

if __name__ == '__main__':
    main(sys.argv)