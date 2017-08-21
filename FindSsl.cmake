find_path(CRYPTO_INCLUDE_DIR md5.h
          /usr/include/
          /usr/local/include/
          )
find_library(CRYPTO_LIBRARIES NAMES md5.so
            PATHS
            /usr/lib/ruby/1.9.1/x86_64-linux/digest/md5.so
            /usr/local/lib/
            /usr/lib/
            )

if(CRYPTO_INCLUDE_DIR AND CRYPTO_LIBRARIES)
    set(CRYPTO_FOUND TRUE)
    message(STATUS "Found CRYPTO: ${CRYPTO_INCLUDE_DIR}, ${CRYPTO_LIBRARIES}")
    else(CRYPTO_INCLUDE_DIR AND CRYPTO_LIBRARIES)
    set(CRYPTO_FOUND FALSE)
    message(STATUS "CRYPTO not found.")
endif(CRYPTO_INCLUDE_DIR AND CRYPTO_LIBRARIES)

mark_as_advanced(CRYPTO_INCLUDE_DIR CRYPTO_LIBRARIES)

