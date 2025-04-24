#!/bin/bash 
# shebang line, indicating that the script should be excuted with /bin/bash

declare -A COMPILER=( [x86_64]=/usr/bin/gcc
                      [aarch64]=/usr/bin/aarch64-linux-gnu-gcc
                      [armv7l]=/usr/bin/arm-linux-gnueabi-gcc )

for ARCH in x86_64 # aarch64
do
  echo "-I- Building ${ARCH}"
  mkdir -p build/${ARCH}
  cmake -H. -Bbuild/${ARCH}
  cmake --build build/${ARCH}
done

if [[ -f "log.log" ]]; then
  rm log.log
fi



