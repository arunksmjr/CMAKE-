find_path(JSONCPP_INCLUDE_DIR jsoncpp/json/json.h
          /usr/include/
          /usr/local/include/
          )
find_library(JSONCPP_LIBRARIES NAMES jsoncpp
            PATHS
            /usr/local/lib/
            /usr/lib/
            )

if(JSONCPP_INCLUDE_DIR AND JSONCPP_LIBRARIES)
    set(JSONCPP_FOUND TRUE)
    message(STATUS "Found jsoncpp: ${JSONCPP_INCLUDE_DIR}, ${JSONCPP_LIBRARIES}")
    else(JSONCPP_INCLUDE_DIR AND JSONCPP_LIBRARIES)
    set(JSONCPP_FOUND FALSE)
    message(STATUS "Jsoncpp not found.")
endif(JSONCPP_INCLUDE_DIR AND JSONCPP_LIBRARIES)

mark_as_advanced(JSONCPP_INCLUDE_DIR JSONCPP_LIBRARIES)

