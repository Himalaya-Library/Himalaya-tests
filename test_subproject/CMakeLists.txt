cmake_minimum_required(VERSION 2.8.12)
project(TestFindHimalaya)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED YES)

add_subdirectory(Himalaya)

add_executable(example-cpp example.cpp)
target_link_libraries(example-cpp Himalaya::Himalaya Himalaya::DSZ)
