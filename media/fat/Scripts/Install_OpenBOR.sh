#!/bin/bash

# Configuration
ROOT_DIR=/media/fat
SCRIPTS=$ROOT_DIR/Scripts
INSTALL=$ROOT_DIR/OpenBOR
VERSION=crt_hdmi_scripts
PACKAGE=MiSTer_OpenBOR-$VERSION
WORKING=/tmp/$PACKAGE

cleanup () {
  rm -rf /tmp/$VERSION.zip /tmp/$PACKAGE
}

# Download latest and extract
cleanup
wget -P /tmp https://github.com/SumolX/MiSTer_OpenBOR/archive/$VERSION.zip || exit 1
unzip /tmp/$VERSION.zip -d /tmp || exit 1

# Prepare directory structure
mkdir -p $INSTALL/Logs
mkdir -p $INSTALL/Paks
mkdir -p $INSTALL/Saves
mkdir -p $INSTALL/ScreenShots

# Clear out previous files
rm -rf $INSTALL/Libs
rm -rf $SCRIPTS/OpenBOR.sh

# Install new files
cp -av $WORKING/Libs $INSTALL/ && \
cp -av $WORKING/OpenBOR $INSTALL/ && \
cp -av $WORKING/media/fat/Scripts/OpenBOR_*.sh $SCRIPTS/ && \
cp -av $WORKING/media/fat/Scripts/Install_OpenBOR.sh $SCRIPTS/ && \
cleanup

