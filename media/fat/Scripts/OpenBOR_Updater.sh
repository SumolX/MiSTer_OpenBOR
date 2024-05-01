#!/bin/bash

# Configuration
PROJECT=MiSTer_OpenBOR
VERSION=master
PACKAGE=$PROJECT-$VERSION

cleanup () {
  rm -rf /tmp/$VERSION.zip /tmp/$PROJECT
}

# Download latest and extract
cleanup
wget -P /tmp https://github.com/SumolX/$PROJECT/archive/$VERSION.zip || exit 1
unzip /tmp/$VERSION.zip -d /tmp || exit 1
mv /tmp/$PACKAGE /tmp/$PROJECT

# Execute latest installer
cd /tmp/$PROJECT && ./OpenBOR_Install.sh
cleanup
