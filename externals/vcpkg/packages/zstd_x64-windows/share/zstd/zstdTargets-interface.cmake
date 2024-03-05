
add_library(zstd::libzstd_static IMPORTED INTERFACE)
set_target_properties(zstd::libzstd_static PROPERTIES INTERFACE_LINK_LIBRARIES zstd::libzstd_shared)
