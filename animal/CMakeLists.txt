cmake_minimum_required(VERSION 3.20)
project(animal CXX)
include_directories(${CMAKE_SOURCE_DIR}/include)
set(SOURCE_FILES
    ${CMAKE_SOURCE_DIR}/src/dog.cpp
    ${CMAKE_SOURCE_DIR}/src/cat.cpp
    ${CMAKE_SOURCE_DIR}/src/main.cpp
)
add_executable(animal ${SOURCE_FILES})
