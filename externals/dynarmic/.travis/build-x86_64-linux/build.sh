#!/bin/sh

set -e
set -x

export CC=gcc-${GCC_VERSION}
export CXX=g++-${GCC_VERSION}
export PKG_CONFIG_PATH=$HOME/.local/lib/pkgconfig:$PKG_CONFIG_PATH

mkdir build && cd build
cmake .. -DBoost_INCLUDE_DIRS=${PWD}/../externals/ext-boost -DCMAKE_BUILD_TYPE=Release -G Ninja
ninja

./tests/dynarmic_tests --durations yes
