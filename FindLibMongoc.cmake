# Mongoc
# -----
# Find the path to Mongoc header files and libraries
#
# DEFINES
# ------
# MONGOC_INCLUDE_DIR - Mongoc include directory
# MONGOC_LIBRARIES - Libraries required to link Mongoc
# MONGOC_FOUND - Confirmation

find_path(MONGOC_INCLUDE_DIR mongoc.h
          /usr/include/libmongoc-1.0
          /usr/local/include/libmongoc-1.0
          )
find_library(MONGOC_LIBRARIES NAMES libmongoc-1.0.so
            PATHS
            /usr/local/lib
            )

if(MONGOC_INCLUDE_DIR AND MONGOC_LIBRARIES)
    set(MONGOC_FOUND TRUE)
    message(STATUS "Found MongoC: ${MONGOC_INCLUDE_DIR}, ${MONGOC_LIBRARIES}")
    else(MONGOC_INCLUDE_DIR AND MONGOC_LIBRARIES)
    set(MONGOC_FOUND FALSE)
    message(STATUS "MongC not found.")
endif(MONGOC_INCLUDE_DIR AND MONGOC_LIBRARIES)

mark_as_advanced(MONGOC_INCLUDE_DIR MONGOC_LIBRARIES)
