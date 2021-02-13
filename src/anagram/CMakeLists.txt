
add_library(anagram main.cpp)

target_link_libraries(anagram
    project_options 
    project_warnings 
    CONAN_PKG::ms-gsl)

add_executable(test_anagram main.cpp)
target_link_libraries(test_anagram PRIVATE anagram)