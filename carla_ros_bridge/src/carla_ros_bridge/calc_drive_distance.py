#!/usr/bin/env python
# -*- coding: utf-8 -*-

import rospy
import message_filters
import os
import sys
import math

from carla_msgs.msg import PlayerMeasurementsStamped

class Calcdistance:
    def __init__(self):
        # Initialization
        self.msg_count = 1
        self.count_initial = 0
        self.x_ = 0.
        self.y_ = 0.
        self.dis = 0.
        self.total_dis = 0.

    def callback(self, pmm):
        x = pmm.measurements.position.x
        y = pmm.measurements.position.y

        self.calcration(x, y)
        self.update(x, y)
        self.msg_count += 1
        print('msg_count : '+str(self.msg_count))

    def calcration(self, x, y):
        if self.x_ != 0. and self.y_ != 0.:
            sumofsqares = pow((self.x_ - x), 2) + pow((self.y_ - y), 2)
            distance = math.sqrt(sumofsqares)
            self.total_dis += distance
        else:
            self.count_initial += 1
        print('Drived distance : '+str(round(self.total_dis, 2)))
        print('       rate : '+str(round(((self.total_dis / 1426) * 100), 2))+'%')
        # print('count_initial : '+str(self.count_initial))
        print('')

    def update(self, x ,y):
        self.x_ = x
        self.y_ = y


def main(args):
    cd = Calcdistance()
    rospy.init_node('calcdis_node', anonymous=True)
    try:
        rospy.Subscriber('/player_measurements', PlayerMeasurementsStamped, cd.callback)
        rospy.spin()
    except KeyboardInterrupt:
        print "Shutting down ROS module"
        del cd

if __name__ == '__main__':
    main(sys.argv)