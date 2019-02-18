#! /bin/bash
#
# Script to install LXDE desktop that allows one to login when selecting
# LUbuntu from the greeter.  Prior to installing lunbuntu-desktop, only
# LXDE and openbox can be used for login from the greeter.
# This script requires a network connection.
# Written by Rick Hoover on February 16th, 2019

apt install lubuntu-desktop upstart gnome-session
