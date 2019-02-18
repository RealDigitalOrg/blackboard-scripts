# Scripts included with Blackboard in /root/Scripts

This directory contains scripts that can be used to enhance Linux on the SD card.  

## Getting Started

The first script to run extends the Linux partition to the maximum size allowed and builds a swap file.  Use the "cd Scripts" command to enter the Scripts directory from /root and then type "./build-swap.sh -e".  The "-e" option will first extend the Linux partition before creating the swap file.  It is imprtant that the Linux partition have enough space available before creating the swap file.

In summary, once booted the first time run the following from the Scripts directory:

```
./build-swap.sh -e
```

### Prerequisites

You will need a Blackboard Rev. D to run the default image provided on-line.  To run Blackboard Rev. B, you need to replace system.bit in the first partition of the SD card with the appropriate bit file.

To fully utilize the Linux system on Blackboard, you will need the following:

 * A 5V 2.5A USB power supply that plugs into the EXTP port of Blackboard.  We use a CanaKit 5V 2.5A power supply for our boards.  Make sure the adjacent jumper is on the "EXTP" side of the jumber block.

 * A DVI or HDMI monitor.

 * A HDMI to DVI cable or HDMI cable depending on what type of monitor you have.

 * A powered USB hub that provides the power needed for your USB peripherals.  We use a hub that supplies 2A for the peripherals.  Plugged into the hub are the following:

   * A keyboard and mouse or a keyboard wireless dongle.  We use a Logitech K400+ keyboard with built-in trackpad because it is portable and has worked well.

   * An Ethernet to USB adapter for a network connection.  We use an Apple USB to Ethernet adapter and it works well for our needs.

Some of the install scripts require a network connection to run properly.  The scripts that require a network connection are noted below in the "Installing Options" section.


### Installing Options

There are scripts for setting up some options included.  The scripts include:

 * build-devicetree.sh: Builds devicetree.dtb from the source files located in /root/Src/dts.  The devicetree.dtb file is one of the files located on the boot partition of the SD card.  The source files were generated using xsdk and the Xilinx device tree generator.  See the following web link for details: https://xilinx-wiki.atlassian.net/wiki/spaces/A/pages/18842279/Build+Device+Tree+Blob  One extra line is added to the bottom of the system-top.dts file after generating the device tree files.

```
/include/ "system-user.dtsi"
```

 * build-swap.sh: Builds a swap file and extends the Linux partition to the maximum size of the SD card when using the -e option.  This script is described above in the "Getting Started" section.

 * install-desktop.sh: Install the LXDE (Lubuntu) desktop.  This script requires a network connection.

 * install-gvim.sh: Installs a graphical version of vim for use with X Windows.  This script requires a network connection.

 * set-runlevel.sh: The -g option will set the default to graphical login mode while the -t option will restore the default to text mode.

