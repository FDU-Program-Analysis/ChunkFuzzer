#!/bin/bash

SHELL_DIR=$(readlink -f "$0")
ROOT_DIR=$(dirname $SHELL_DIR)
RCGN_PATH=${PREFIX:-${ROOT_DIR}/recognition/}
FUZZ_PATH=${PREFIX:-${ROOT_DIR}/fuzzer/}

set -euxo pipefail

echo "---build recognition module---"
cd ${RCGN_PATH}
./build.sh

echo "---build fuzzer module---"
cd ${FUZZ_PATH}
make clean
make
echo "---finish---"