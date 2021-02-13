macro(run_conan)
  # Download automatically, you can also just copy the conan.cmake file
  if(NOT EXISTS "${CMAKE_BINARY_DIR}/conan.cmake")
    message(STATUS "Downloading conan.cmake from https://github.com/conan-io/cmake-conan")
    file(DOWNLOAD "https://github.com/conan-io/cmake-conan/raw/v0.15/conan.cmake" "${CMAKE_BINARY_DIR}/conan.cmake")
  endif()

  include(${CMAKE_BINARY_DIR}/conan.cmake)

  conan_add_remote(NAME conan-center URL
    https://conan.bintray.com)

  conan_cmake_run(
    REQUIRES
    ms-gsl/3.0.1

    SETTINGS
    compiler.version=12.0

    BASIC_SETUP
    CMAKE_TARGETS
    BUILD 
    missing
  )

endmacro()