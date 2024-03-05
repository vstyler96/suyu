# Use, modification, and distribution are
# subject to the Boost Software License, Version 1.0. (See accompanying
# file LICENSE.txt)
#
# Copyright Rene Rivera 2020.

# For Drone CI we use the Starlark scripting language to reduce duplication.
# As the yaml syntax for Drone CI is rather limited.
#
#
globalenv={'B2_VARIANT': 'variant=release,debug'}
linuxglobalimage="cppalliance/droneubuntu1404:1"
windowsglobalimage="cppalliance/dronevs2019"

def main(ctx):
  return [
  linux_cxx("TOOLSET=gcc-4.4 CXXSTD=98,0x Job 0", "g++", packages="g++-4.4", buildtype="boost", buildscript="drone", image=linuxglobalimage, environment={'TOOLSET': 'gcc-4.4', 'CXXSTD': '98,0x', 'DRONE_JOB_UUID': 'b6589fc6ab'}, globalenv=globalenv),
  linux_cxx("TOOLSET=gcc-4.6 CXXSTD=03,0x Job 1", "g++", packages="g++-4.6", buildtype="boost", buildscript="drone", image=linuxglobalimage, environment={'TOOLSET': 'gcc-4.6', 'CXXSTD': '03,0x', 'DRONE_JOB_UUID': '356a192b79'}, globalenv=globalenv),
  linux_cxx("TOOLSET=gcc-4.8 CXXSTD=03,11 Job 2", "g++", packages="g++-4.8", buildtype="boost", buildscript="drone", image=linuxglobalimage, environment={'TOOLSET': 'gcc-4.8', 'CXXSTD': '03,11', 'DRONE_JOB_UUID': 'da4b9237ba'}, globalenv=globalenv),
  linux_cxx("TOOLSET=gcc-5 CXXSTD=03,11 Job 3", "g++", packages="g++-5", buildtype="boost", buildscript="drone", image=linuxglobalimage, environment={'TOOLSET': 'gcc-5', 'CXXSTD': '03,11', 'DRONE_JOB_UUID': '77de68daec'}, globalenv=globalenv),
  linux_cxx("TOOLSET=gcc-6 CXXSTD=03,11,14 Job 4", "g++", packages="g++-6", buildtype="boost", buildscript="drone", image=linuxglobalimage, environment={'TOOLSET': 'gcc-6', 'CXXSTD': '03,11,14', 'DRONE_JOB_UUID': '1b64538924'}, globalenv=globalenv),
  linux_cxx("TOOLSET=gcc-7 CXXSTD=03,11,14,17 Job 5", "g++", packages="g++-7", buildtype="boost", buildscript="drone", image=linuxglobalimage, environment={'TOOLSET': 'gcc-7', 'CXXSTD': '03,11,14,17', 'DRONE_JOB_UUID': 'ac3478d69a'}, globalenv=globalenv),
  linux_cxx("TOOLSET=gcc-8 CXXSTD=03,11,14,17,2a Job 6", "g++", packages="g++-8", buildtype="boost", buildscript="drone", image=linuxglobalimage, environment={'TOOLSET': 'gcc-8', 'CXXSTD': '03,11,14,17,2a', 'DRONE_JOB_UUID': 'c1dfd96eea'}, globalenv=globalenv),
  linux_cxx("TOOLSET=clang-3.4 CXXSTD=03,11 Job 7", "g++", packages="clang-3.4", llvm_os="trusty", llvm_ver="3.4", buildtype="boost", buildscript="drone", image=linuxglobalimage, environment={'TOOLSET': 'clang-3.4', 'CXXSTD': '03,11', 'DRONE_JOB_UUID': '902ba3cda1'}, globalenv=globalenv),
  linux_cxx("TOOLSET=clang-3.8 CXXSTD=03,11,14 Job 8", "g++", packages="clang-3.8 libstdc++-6-dev", llvm_os="trusty", llvm_ver="3.8", buildtype="boost", buildscript="drone", image=linuxglobalimage, environment={'TOOLSET': 'clang-3.8', 'CXXSTD': '03,11,14', 'DRONE_JOB_UUID': 'fe5dbbcea5'}, globalenv=globalenv),
  linux_cxx("TOOLSET=clang-4.0 CXXSTD=03,11,14 Job 9", "g++", packages="clang-4.0 libstdc++-6-dev", llvm_os="trusty", llvm_ver="4.0", buildtype="boost", buildscript="drone", image=linuxglobalimage, environment={'TOOLSET': 'clang-4.0', 'CXXSTD': '03,11,14', 'DRONE_JOB_UUID': '0ade7c2cf9'}, globalenv=globalenv),
  linux_cxx("TOOLSET=clang-5.0 CXXSTD=03,11,14,17 Job 10", "g++", packages="clang-5.0 libstdc++-7-dev", llvm_os="trusty", llvm_ver="5.0", buildtype="boost", buildscript="drone", image=linuxglobalimage, environment={'TOOLSET': 'clang-5.0', 'CXXSTD': '03,11,14,17', 'DRONE_JOB_UUID': 'b1d5781111'}, globalenv=globalenv),
  linux_cxx("TOOLSET=clang-6.0 CXXSTD=03,11,14,17,2a Job 11", "g++", packages="clang-6.0 libc++-dev libstdc++-8-dev valgrind", llvm_os="trusty", llvm_ver="6.0", buildtype="boost", buildscript="drone", image=linuxglobalimage, environment={'TOOLSET': 'clang-6.0', 'CXXSTD': '03,11,14,17,2a', 'DRONE_JOB_UUID': '17ba079149'}, globalenv=globalenv),
  linux_cxx("TOOLSET=clang-6.0 CXXSTD=03,11,14,17,2a Job 12", "g++", packages="clang-6.0 libc++-dev libstdc++-8-dev valgrind", llvm_os="trusty", llvm_ver="6.0", buildtype="boost", buildscript="drone", image=linuxglobalimage, environment={'TOOLSET': 'clang-6.0', 'CXXSTD': '03,11,14,17,2a', 'CXXFLAGS': '-stdlib=libc++', 'DRONE_JOB_UUID': '7b52009b64'}, globalenv=globalenv),
  linux_cxx("COMMENT=codecov.io TOOLSET=gcc-7 DEFINES=def Job 13", "g++", packages="g++-7", buildtype="6d5a3a255d-bbb3de2b00", buildscript="drone", image=linuxglobalimage, environment={'COMMENT': 'codecov.io', 'TOOLSET': 'gcc-7', 'DEFINES': 'define=BOOST_NO_STRESS_TEST=1', 'DRONE_JOB_UUID': 'bd307a3ec3'}, globalenv=globalenv),
  linux_cxx("COMMENT=cppcheck Job 14", "g++", packages="binutils-gold gdb libc6-dbg", buildtype="6d5a3a255d-ed45733e6c", buildscript="drone", image=linuxglobalimage, environment={'COMMENT': 'cppcheck', 'DRONE_JOB_UUID': 'fa35e19212'}, globalenv=globalenv),
  linux_cxx("COMMENT=ubsan B2_VARIANT=variant=debug TOOLSE Job 15", "g++", packages="g++-8", buildtype="boost", buildscript="drone", image=linuxglobalimage, environment={'COMMENT': 'ubsan', 'B2_VARIANT': 'variant=debug', 'TOOLSET': 'gcc-8', 'CXXSTD': '03,11,14,17,2a', 'DEFINES': 'define=BOOST_NO_STRESS_TEST=1', 'CXXFLAGS': 'cxxflags=-fno-omit-frame-pointer cxxflags=-fsanitize=undefined cxxflags=-fno-sanitize-recover=undefined', 'LINKFLAGS': 'linkflags=-fsanitize=undefined linkflags=-fno-sanitize-recover=undefined linkflags=-fuse-ld=gold', 'UBSAN_OPTIONS': 'print_stacktrace=1', 'DRONE_JOB_UUID': 'f1abd67035'}, globalenv=globalenv),
  linux_cxx("COMMENT=valgrind TOOLSET=clang-6.0 CXXSTD=03, Job 16", "g++", packages="clang-6.0 libc++-dev libstdc++-8-dev valgrind", llvm_os="trusty", llvm_ver="6.0", buildtype="boost", buildscript="drone", image=linuxglobalimage, environment={'COMMENT': 'valgrind', 'TOOLSET': 'clang-6.0', 'CXXSTD': '03,11,14,17,2a', 'DEFINES': 'define=BOOST_NO_STRESS_TEST=1', 'B2_VARIANT': 'variant=debug', 'TESTFLAGS': 'testing.launcher=valgrind', 'VALGRIND_OPTS': '--error-exitcode=1', 'DRONE_JOB_UUID': '1574bddb75'}, globalenv=globalenv),
  linux_cxx("COMMENT=Coverity Scan TOOLSET=gcc-7 Job 17", "g++", packages="g++-7", buildtype="6d5a3a255d-cce9827eb5", buildscript="drone", image=linuxglobalimage, environment={'COMMENT': 'Coverity Scan', 'TOOLSET': 'gcc-7', 'DRONE_JOB_UUID': '0716d9708d'}, globalenv=globalenv),
    ]

# from https://github.com/boostorg/boost-ci
load("@boost_ci//ci/drone/:functions.star", "linux_cxx","windows_cxx","osx_cxx","freebsd_cxx")
