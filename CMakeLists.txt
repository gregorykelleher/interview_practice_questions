cmake_minimum_required(VERSION 3.1)

project(cantrace_project VERSION 1.0
                   DESCRIPTION "Interview Practice Questions"
                   LANGUAGES CXX)

add_library(project_options INTERFACE)
target_compile_features(project_options INTERFACE cxx_std_17)

# set compiler warnings
add_library(project_warnings INTERFACE)
include(cmake/compiler_warnings.cmake)
set_project_warnings(project_warnings)

# conan setup
include(cmake/conan.cmake)
run_conan()

add_subdirectory(src)