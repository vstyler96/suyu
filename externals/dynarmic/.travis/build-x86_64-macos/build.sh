#!/bin/sh

set -e
set -x
set -o pipefail

export MACOSX_DEPLOYMENT_TARGET=10.12

mkdir build && cd build
cmake .. -GXcode -DBoost_INCLUDE_DIRS=${PWD}/../externals/ext-boost -DDYNARMIC_TESTS=0
xcodebuild -configuration Release
