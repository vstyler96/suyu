# Install script for directory: D:/a/1/s/externals/vcpkg/buildtrees/fmt/src/8.1.1-11f8359597.clean

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "D:/a/1/s/externals/vcpkg/packages/fmt_x64-windows/debug")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "OFF")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/a/1/s/externals/vcpkg/buildtrees/fmt/x64-windows-dbg/fmtd.lib")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/a/1/s/externals/vcpkg/buildtrees/fmt/x64-windows-dbg/bin/fmtd.dll")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/fmt" TYPE FILE FILES
    "D:/a/1/s/externals/vcpkg/buildtrees/fmt/x64-windows-dbg/fmt-config.cmake"
    "D:/a/1/s/externals/vcpkg/buildtrees/fmt/x64-windows-dbg/fmt-config-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/fmt/fmt-targets.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/fmt/fmt-targets.cmake"
         "D:/a/1/s/externals/vcpkg/buildtrees/fmt/x64-windows-dbg/CMakeFiles/Export/share/fmt/fmt-targets.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/fmt/fmt-targets-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/fmt/fmt-targets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/fmt" TYPE FILE FILES "D:/a/1/s/externals/vcpkg/buildtrees/fmt/x64-windows-dbg/CMakeFiles/Export/share/fmt/fmt-targets.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/fmt" TYPE FILE FILES "D:/a/1/s/externals/vcpkg/buildtrees/fmt/x64-windows-dbg/CMakeFiles/Export/share/fmt/fmt-targets-debug.cmake")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE FILE OPTIONAL FILES
    "D:/a/1/s/externals/vcpkg/buildtrees/fmt/src/8.1.1-11f8359597.clean/$<TARGET_PDB_FILE:fmt"
    "D:/a/1/s/externals/vcpkg/buildtrees/fmt/src/8.1.1-11f8359597.clean/fmt-header-only>"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/fmt" TYPE FILE FILES
    "D:/a/1/s/externals/vcpkg/buildtrees/fmt/src/8.1.1-11f8359597.clean/include/fmt/args.h"
    "D:/a/1/s/externals/vcpkg/buildtrees/fmt/src/8.1.1-11f8359597.clean/include/fmt/chrono.h"
    "D:/a/1/s/externals/vcpkg/buildtrees/fmt/src/8.1.1-11f8359597.clean/include/fmt/color.h"
    "D:/a/1/s/externals/vcpkg/buildtrees/fmt/src/8.1.1-11f8359597.clean/include/fmt/compile.h"
    "D:/a/1/s/externals/vcpkg/buildtrees/fmt/src/8.1.1-11f8359597.clean/include/fmt/core.h"
    "D:/a/1/s/externals/vcpkg/buildtrees/fmt/src/8.1.1-11f8359597.clean/include/fmt/format.h"
    "D:/a/1/s/externals/vcpkg/buildtrees/fmt/src/8.1.1-11f8359597.clean/include/fmt/format-inl.h"
    "D:/a/1/s/externals/vcpkg/buildtrees/fmt/src/8.1.1-11f8359597.clean/include/fmt/locale.h"
    "D:/a/1/s/externals/vcpkg/buildtrees/fmt/src/8.1.1-11f8359597.clean/include/fmt/os.h"
    "D:/a/1/s/externals/vcpkg/buildtrees/fmt/src/8.1.1-11f8359597.clean/include/fmt/ostream.h"
    "D:/a/1/s/externals/vcpkg/buildtrees/fmt/src/8.1.1-11f8359597.clean/include/fmt/printf.h"
    "D:/a/1/s/externals/vcpkg/buildtrees/fmt/src/8.1.1-11f8359597.clean/include/fmt/ranges.h"
    "D:/a/1/s/externals/vcpkg/buildtrees/fmt/src/8.1.1-11f8359597.clean/include/fmt/xchar.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "D:/a/1/s/externals/vcpkg/buildtrees/fmt/x64-windows-dbg/fmt.pc")
endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "D:/a/1/s/externals/vcpkg/buildtrees/fmt/x64-windows-dbg/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
