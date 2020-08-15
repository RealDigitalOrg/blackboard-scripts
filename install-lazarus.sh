#! /bin/bash
#
# Script to install Lazarus, a Free Pascal IDE for a variety of platforms.
# This script requires a network connection.
# Written by Rick Hoover on February 18th, 2019

CRT_DIR=gcc/arm-linux-gnueabihf
C_VER=

cd /usr/lib
if [ -d ${CRT_DIR}/5 ]; then
	C_VER=5
	echo "5"
fi
if [ -d ${CRT_DIR}/7 ]; then
	C_VER=7
	echo "7"
fi

apt install lazarus

# Create links to crtbegin.o and crtend.o
if [ -n ${C_VER} ]; then
	CRT_DIR=${CRT_DIR}/${C_VER}
	ln -s ${CRT_DIR}/crtbegin.o .
	ln -s ${CRT_DIR}/crtend.o .
fi
