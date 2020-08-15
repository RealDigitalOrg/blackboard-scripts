#! /bin/bash
#
# Script to install vncserver.  This script requires a network connection.
# Written by Rick Hoover on February 20th, 2019

START_FILE=/home/blackboard/.xsessionrc

apt install tightvncserver
echo "xsetroot -cursor_name left_ptr" > ${START_FILE}
chown blackboard:blackboard ${START_FILE}

echo
echo "run 'vncserver' from the blackboard account to enter a password."
echo "You must run vncserver each time you want to use VNC to log in,"
echo "however, setting the vncserver password only occurs the first time."
