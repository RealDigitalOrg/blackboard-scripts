#! /bin/bash
#
# Script to build devicetree.dtb for the boot partition.
# Written by Rick Hoover on February 17th, 2019

cd ../Src/dts
dtc -I dts -O dtb -o devicetree.dtb system-top.dts
