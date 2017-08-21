# LibBson
# -----
# Find the path to LibBson header files and libraries
#
# DEFINES
# ------
# LIBBSON_INCLUDE_DIR - LibBson include directory
# LIBBSON_LIBRARIES - Libraries required to link LibBson
# LIBBSON_FOUND - Confirmation

find_path(LIBBSON_INCLUDE_DIR bson.h
          /usr/lib/include/libbson-1.0
          /usr/local/include/libbson-1.0
          )
find_library(LIBBSON_LIBRARIES NAMES libbson-1.0.so
            PATHS
            /usr/lib/
            usr/local/
            )

if(LIBBSON_INCLUDE_DIR AND LIBBSON_LIBRARIES)
    set(LIBBSON_FOUND TRUE)
    message(STATUS "Found LibBson: ${LIBBSON_INCLUDE_DIR}, ${LIBBSON_LIBRARIES}")
    else(LIBBSON_INCLUDE_DIR AND LIBBSON_LIBRARIES)
    set(LIBBSON_FOUND FALSE)
    message(STATUS "LibBson not found.")
endif(LIBBSON_INCLUDE_DIR AND LIBBSON_LIBRARIES)

mark_as_advanced(LIBBSON_INCLUDE_DIR LIBBSON_LIBRARIES)
