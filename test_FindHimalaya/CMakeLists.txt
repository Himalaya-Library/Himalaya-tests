cmake_minimum_required(VERSION 2.8.12)
project(TestFindHimalaya)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED YES)

find_package(Eigen3 3.1 REQUIRED)
find_package(Himalaya REQUIRED)

include_directories(${EIGEN3_INCLUDE_DIR})

add_executable(example example.cpp)
target_link_libraries(example Himalaya::Himalaya Himalaya::DSZ)
