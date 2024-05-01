#!/bin/bash

# Configuration
PROJECT=MiSTer_OpenBOR
VERSION=master
PACKAGE=$PROJECT-$VERSION
WORKING=/tmp/$PROJECT

cleanup () {
  rm -rf /tmp/$VERSION.zip /tmp/$PACKAGE
}

# Download latest and extract
cleanup
wget -P /tmp https://github.com/SumolX/MiSTer_OpenBOR/archive/$VERSION.zip || exit 1
unzip /tmp/$VERSION.zip -d /tmp || exit 1
mv /tmp/$PACKAGE $WORKING

# Execute latest installer
$WORKING/OpenBOR_Install.sh
cleanup
