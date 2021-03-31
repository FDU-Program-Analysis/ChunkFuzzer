#!/bin/sh

RCGN_PATH=`pwd`/recognition
FUZZ_PATH=`pwd`/fuzzer

echo "---build recognition module---"
cd ${RCGN_PATH}
./build.sh

echo "---build fuzzer module---"
cd ${FUZZ_PATH}
make clean
make
echo "---finish---"