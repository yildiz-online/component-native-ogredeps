#!/usr/bin/env bash

cmake ../../c++ \
-DCMAKE_BUILD_TYPE=Release \
-DCMAKE_INSTALL_PREFIX="../../../../target/classes/linux64" \
-G "Unix Makefiles"

make install
r1=$?
make clean
rm -r CMakeFiles
rm -r notwanted
rm -r src
rm CMakeCache.txt
rm cmake_install.cmake
rm install_manifest.txt
rm Makefile

exit ${r1}
