cmake_minimum_required(VERSION 3.5.0)
project(gdb_with_cmake)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED True)

add_subdirectory(src/utils)
add_executable(main.out src/main.cpp)

target_link_libraries(main.out PUBLIC utils)

# use this way because spdlog is header-only
target_include_directories(
    main.out PRIVATE 
    "${PROJECT_SOURCE_DIR}/src"
)



