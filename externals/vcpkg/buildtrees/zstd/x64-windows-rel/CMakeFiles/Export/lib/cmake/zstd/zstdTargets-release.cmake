#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "zstd::libzstd_shared" for configuration "Release"
set_property(TARGET zstd::libzstd_shared APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(zstd::libzstd_shared PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/zstd.lib"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/zstd.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS zstd::libzstd_shared )
list(APPEND _IMPORT_CHECK_FILES_FOR_zstd::libzstd_shared "${_IMPORT_PREFIX}/lib/zstd.lib" "${_IMPORT_PREFIX}/bin/zstd.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
