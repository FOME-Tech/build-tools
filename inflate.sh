#!/usr/bin/bash

# Because GitHub has a 100MB limit for non-LFS, we have to store GDB compressed.
# This script unpacks it.

echo "Unpacking GDB..."

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
cd $SCRIPT_DIR/arm-gnu-toolchain-11.3.rel1-x86_64-arm-none-eabi/bin/
rm -f arm-none-eabi-gdb
bunzip2 -k arm-none-eabi-gdb.bz2

file arm-none-eabi-gdb

echo "Done!"
