cmake_minimum_required(VERSION 3.10.2)
project(poo1_sp6_v2021_1)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}/${OUTPUT_DEBUG})
#set(CMAKE_CXX_FLAGS "-m64 -Wa,-mbig-obj")
if(UNIX AND NOT APPLE)
    set(CMAKE_CXX_FLAGS -pthread)
endif()

include_directories(.)
include_directories(./src)
include_directories(./test)

file(GLOB source_files
        *.h
        main.cpp
        src/*.h
        src/*.cpp
        test/*.cpp)

add_executable(poo1_sp6_v2021_1  ${source_files})

file(GLOB test_files test/*.in )
file(COPY ${test_files} DESTINATION ${CMAKE_RUNTIME_OUTPUT_DIRECTORY})
