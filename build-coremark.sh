#!/bin/bash

set -e

BASEDIR=$PWD
ITERATIONS=1000
CM_FOLDER=coremark

cd $BASEDIR/$CM_FOLDER

# run the compile
echo "Start compilation"
make PORT_DIR=../riscv64 compile
mv coremark.riscv ../

make PORT_DIR=../riscv64-baremetal ITERATIONS=$ITERATIONS compile
mv coremark.bare.riscv ../
