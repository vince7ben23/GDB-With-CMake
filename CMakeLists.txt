cmake_minimum_required(VERSION 3.5.0)
project(gdb_with_cmake)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED True)

add_executable(main.out src/main.cpp src/utils/foo.cpp)

