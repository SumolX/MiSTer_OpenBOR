#!/bin/bash

# Configuration
ROOT_DIR=/media/fat
SCRIPTS=$ROOT_DIR/Scripts
INSTALL=$ROOT_DIR/OpenBOR
PACKAGE=MiSTer_OpenBOR-main

# Download latest and extract
rm -rf /tmp/master.zip /tmp/$PACKAGE
wget -P /tmp https://github.com/SumolX/MiSTer_OpenBOR/archive/master.zip
cd /tmp
unzip master.zip
cd $PACKAGE

# Prepare directory structure
mkdir -p $INSTALL/Logs
mkdir -p $INSTALL/Paks
mkdir -p $INSTALL/Saves
mkdir -p $INSTALL/ScreenShots

# Clear out previous files
rm -rf $INSTALL/Libs

# Install new files
cp -a Libs $INSTALL/
cp -a OpenBOR $INSTALL/
cp -a media/fat/Scripts/OpenBOR.sh $SCRIPTS/
cp -a media/fat/Scripts/Install_OpenBOR.sh $SCRIPTS/

# Cleanup
cd /tmp
rm -rf master.zip $PACKAGE
