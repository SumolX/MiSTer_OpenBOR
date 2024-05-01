#!/bin/bash

# Configuration
ROOT_DIR=/media/fat
SCRIPTS=$ROOT_DIR/Scripts
INSTALL=$ROOT_DIR/OpenBOR
WORKING=$1

# Prepare directory structure
mkdir -p $INSTALL/Paks
mkdir -p $INSTALL/CRT/Logs
mkdir -p $INSTALL/CRT/Saves
mkdir -p $INSTALL/CRT/ScreenShots
mkdir -p $INSTALL/HDMI/Logs
mkdir -p $INSTALL/HDMI/Saves
mkdir -p $INSTALL/HDMI/ScreenShots

# Update previous installation
rm -rf $INSTALL/Libs > /dev/null 2>&1
rm -rf $SCRIPTS/OpenBOR.sh > /dev/null 2>&1

if [ ! -d "$INSTALL/CRT" ]; then
  cp -a $INSTALL/Logs/* $INSTALL/CRT/Logs/ > /dev/null 2>&1
  cp -a $INSTALL/Saves/* $INSTALL/CRT/Saves/ > /dev/null 2>&1
  cp -a $INSTALL/ScreenShots/* $INSTALL/CRT/ScreenShots/ > /dev/null 2>&1
fi

if [ ! -d "$INSTALL/HDMI" ]; then
  cp -a $INSTALL/Logs/* $INSTALL/HDMI/Logs/ > /dev/null 2>&1
  cp -a $INSTALL/Saves/* $INSTALL/HDMI/Saves/ > /dev/null 2>&1
  cp -a $INSTALL/ScreenShots/* $INSTALL/HDMI/ScreenShots/ > /dev/null 2>&1
fi

rm -rf $INSTALL/Logs $INSTALL/Saves $INSTALL/ScreenShots

# Install new files
cp -av $WORKING/Libs $INSTALL/ && \
cp -av $WORKING/OpenBOR* $INSTALL/ && \
cp -av $WORKING/media/fat/Scripts/* $SCRIPTS/ 

