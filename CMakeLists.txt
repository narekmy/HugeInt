project(hugeint)
cmake_minimum_required(VERSION 3.7)
include_directories(${PROJECT_SOURCE_DIR}/include)

add_executable(hugeint driver/HugeIntTest.cpp lib/HugeInt.cpp)

