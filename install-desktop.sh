#! /bin/bash
#
# Script to install LXDE desktop that allows one to login when selecting
# LUbuntu from the greeter.  Prior to installing lunbuntu-desktop, only
# LXDE and openbox can be used for login from the greeter.
# This script requires a network connection.
# Written by Rick Hoover on February 16th, 2019
# Updated on May 24th, 2021: Reflect changes in Ubuntu 18.04 LTS where
#                            upstart is deprecated.

#apt install lubuntu-desktop upstart gnome-session
apt install lubuntu-desktop systemd-sysv gnome-session
