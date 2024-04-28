#!/bin/bash

OPENBOR_CPU_MASK=03
OPENBOR_EXE_NAME="OpenBOR"
OPENBOR_HOME_DIR="/media/fat/OpenBOR"
LIB_PATH="${OPENBOR_HOME_DIR}/libs:${OPENBOR_HOME_DIR}/libs/pulseaudio"

echo "Setting Video mode..."
vmode -r 320 240 rgb32 > /dev/null 2>&1

export LD_LIBRARY_PATH="${LD_LIBRARY_PATH}:${LIB_PATH}"
export HOME="${OPENBOR_HOME_DIR}"

cd ${OPENBOR_HOME_DIR}
taskset ${OPENBOR_CPU_MASK} ${OPENBOR_HOME_DIR}/${OPENBOR_EXE_NAME} > /dev/null 2>&1
