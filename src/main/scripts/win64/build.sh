#!/usr/bin/env bash

cmake ../../c++ \
-DCMAKE_BUILD_TYPE=Release \
-DOGREDEPS_BUILD_OIS=FALSE \
-DOGREDEPS_BUILD_SDL2=FALSE \
-DOGREDEPS_BUILD_REMOTERY=FALSE \
-DCMAKE_INSTALL_PREFIX="../../../../target/classes/win64" \
-DCMAKE_TOOLCHAIN_FILE=mingw-toolchain.cmake

make install
r1=$?
rm -r bin
rm -r CMakeFiles
rm -r src
rm CMakeCache.txt
rm cmake_install.cmake
rm Makefile
rm install_manifest.txt
rm -r notwanted

return $r1
