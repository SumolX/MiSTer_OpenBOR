#!/bin/bash

# Configuration
VERSION=master
PACKAGE=MiSTer_OpenBOR-$VERSION
WORKING=/tmp/$PACKAGE

cleanup () {
  rm -rf /tmp/$VERSION.zip /tmp/$PACKAGE
}

# Download latest and extract
cleanup
wget -P /tmp https://github.com/SumolX/MiSTer_OpenBOR/archive/$VERSION.zip || exit 1
unzip /tmp/$VERSION.zip -d /tmp || exit 1

# Execute latest installer
$WORKING/OpenBOR_Install.sh $WORKING
cleanup
