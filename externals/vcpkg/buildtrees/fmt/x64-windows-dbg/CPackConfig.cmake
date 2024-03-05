# This file will be configured to contain variables for CPack. These variables
# should be set in the CMake list file of the project before CPack module is
# included. The list of available CPACK_xxx variables and their associated
# documentation may be obtained using
#  cpack --help-variable-list
#
# Some variables are common to all generators (e.g. CPACK_PACKAGE_NAME)
# and some are specific to a generator
# (e.g. CPACK_NSIS_EXTRA_INSTALL_COMMANDS). The generator specific variables
# usually begin with CPACK_<GENNAME>_xxxx.


set(CPACK_BINARY_7Z "OFF")
set(CPACK_BINARY_IFW "OFF")
set(CPACK_BINARY_NSIS "ON")
set(CPACK_BINARY_NUGET "OFF")
set(CPACK_BINARY_WIX "OFF")
set(CPACK_BINARY_ZIP "OFF")
set(CPACK_BUILD_SOURCE_DIRS "D:/a/1/s/externals/vcpkg/buildtrees/fmt/src/8.1.1-11f8359597.clean;D:/a/1/s/externals/vcpkg/buildtrees/fmt/x64-windows-dbg")
set(CPACK_CMAKE_GENERATOR "Ninja")
set(CPACK_COMPONENT_UNSPECIFIED_HIDDEN "TRUE")
set(CPACK_COMPONENT_UNSPECIFIED_REQUIRED "TRUE")
set(CPACK_DEFAULT_PACKAGE_DESCRIPTION_FILE "C:/Program Files/CMake/share/cmake-3.23/Templates/CPack.GenericDescription.txt")
set(CPACK_DEFAULT_PACKAGE_DESCRIPTION_SUMMARY "FMT built using CMake")
set(CPACK_GENERATOR "NSIS")
set(CPACK_INSTALL_CMAKE_PROJECTS "D:/a/1/s/externals/vcpkg/buildtrees/fmt/x64-windows-dbg;FMT;ALL;/")
set(CPACK_INSTALL_PREFIX "D:/a/1/s/externals/vcpkg/packages/fmt_x64-windows/debug")
set(CPACK_MODULE_PATH "D:/a/1/s/externals/vcpkg/buildtrees/fmt/src/8.1.1-11f8359597.clean/support/cmake")
set(CPACK_NSIS_DISPLAY_NAME "fmt 8.1.1")
set(CPACK_NSIS_INSTALLER_ICON_CODE "")
set(CPACK_NSIS_INSTALLER_MUI_ICON_CODE "")
set(CPACK_NSIS_INSTALL_ROOT "$PROGRAMFILES64")
set(CPACK_NSIS_PACKAGE_NAME "fmt 8.1.1")
set(CPACK_NSIS_UNINSTALL_NAME "Uninstall")
set(CPACK_OUTPUT_CONFIG_FILE "D:/a/1/s/externals/vcpkg/buildtrees/fmt/x64-windows-dbg/CPackConfig.cmake")
set(CPACK_PACKAGE_DEFAULT_LOCATION "/")
set(CPACK_PACKAGE_DESCRIPTION_FILE "C:/Program Files/CMake/share/cmake-3.23/Templates/CPack.GenericDescription.txt")
set(CPACK_PACKAGE_DESCRIPTION_SUMMARY "FMT built using CMake")
set(CPACK_PACKAGE_FILE_NAME "fmt-8.1.1-win64")
set(CPACK_PACKAGE_INSTALL_DIRECTORY "fmt 8.1.1")
set(CPACK_PACKAGE_INSTALL_REGISTRY_KEY "fmt 8.1.1")
set(CPACK_PACKAGE_NAME "fmt")
set(CPACK_PACKAGE_RELOCATABLE "true")
set(CPACK_PACKAGE_VENDOR "Humanity")
set(CPACK_PACKAGE_VERSION "8.1.1")
set(CPACK_PACKAGE_VERSION_MAJOR "8")
set(CPACK_PACKAGE_VERSION_MINOR "1")
set(CPACK_PACKAGE_VERSION_PATCH "1")
set(CPACK_RESOURCE_FILE_LICENSE "C:/Program Files/CMake/share/cmake-3.23/Templates/CPack.GenericLicense.txt")
set(CPACK_RESOURCE_FILE_README "D:/a/1/s/externals/vcpkg/buildtrees/fmt/src/8.1.1-11f8359597.clean/README.rst")
set(CPACK_RESOURCE_FILE_WELCOME "C:/Program Files/CMake/share/cmake-3.23/Templates/CPack.GenericWelcome.txt")
set(CPACK_SET_DESTDIR "OFF")
set(CPACK_SOURCE_GENERATOR "ZIP")
set(CPACK_SOURCE_IGNORE_FILES "[.]vscode/$;[.]vscode//;[.]vs/$;[.]vs//;.*[.]iml$;.*[.]iml/;[.]idea/$;[.]idea//;[.]externalNativeBuild/$;[.]externalNativeBuild//;[.]gradle/$;[.]gradle//;gradle/$;gradle//;gradlew.*$;gradlew.*/;local[.]properties$;local[.]properties/;build/$;build//;support/[.]cxx$;support/[.]cxx/;bin/$;bin//;/_CPack_Packages$;/_CPack_Packages/;/CMakeScripts$;/CMakeScripts/;/doc/doxyxml$;/doc/doxyxml/;/doc/node_modules$;/doc/node_modules/;virtualenv$;virtualenv/;/Testing$;/Testing/;/install_manifest[.]txt$;/install_manifest[.]txt/;.*~$;.*~/;.*[.]a$;.*[.]a/;.*[.]so.*$;.*[.]so.*/;.*[.]xcodeproj$;.*[.]xcodeproj/;.*[.]zip$;.*[.]zip/;cmake_install[.]cmake$;cmake_install[.]cmake/;CPack.*[.]cmake$;CPack.*[.]cmake/;fmt-.*[.]cmake$;fmt-.*[.]cmake/;CTestTestfile[.]cmake$;CTestTestfile[.]cmake/;CMakeCache[.]txt$;CMakeCache[.]txt/;CMakeFiles$;CMakeFiles/;FMT[.]build$;FMT[.]build/;Makefile$;Makefile/;run-msbuild[.]bat$;run-msbuild[.]bat/;fmt[.]pc$;fmt[.]pc/;/.git;/breathe;/format-benchmark;sphinx/;.buildinfo;.doctrees")
set(CPACK_SOURCE_OUTPUT_CONFIG_FILE "D:/a/1/s/externals/vcpkg/buildtrees/fmt/x64-windows-dbg/CPackSourceConfig.cmake")
set(CPACK_SOURCE_PACKAGE_FILE_NAME "fmt-8.1.1")
set(CPACK_SYSTEM_NAME "win64")
set(CPACK_THREADS "1")
set(CPACK_TOPLEVEL_TAG "win64")
set(CPACK_WIX_SIZEOF_VOID_P "8")

if(NOT CPACK_PROPERTIES_FILE)
  set(CPACK_PROPERTIES_FILE "D:/a/1/s/externals/vcpkg/buildtrees/fmt/x64-windows-dbg/CPackProperties.cmake")
endif()

if(EXISTS ${CPACK_PROPERTIES_FILE})
  include(${CPACK_PROPERTIES_FILE})
endif()
