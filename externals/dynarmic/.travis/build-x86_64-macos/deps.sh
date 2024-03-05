#!/bin/sh

set -e
set -x

# TODO: This isn't ideal.
cd externals
git clone https://github.com/MerryMage/ext-boost
cd ..
