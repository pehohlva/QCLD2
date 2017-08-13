
cmake_minimum_required(VERSION 3.9)
project(xlang)


set(PROJECT_COMPANY_NAME "Avasoft")

set(CMAKE_INCLUDE_CURRENT_DIR ON)
set(CMAKE_AUTOMOC ON)

set(CMAKE_CXX_FLAGS_COVERAGE "${CMAKE_CXX_FLAGS_RELEASE} -fprofile-arcs")
find_package(Qt5Core)
#find_package(Qt5Widgets) /// Concurrent Widgets


add_definitions(-DDQTFRAMEWORKACTIV)
add_definitions(-DCLD_WINDOWS)

set(CMAKE_INCLUDE_CURRENT_DIR ON)
set(CMAKE_AUTOMOC ON)
set (CMAKE_CXX_STANDARD 11)

include_directories(./internal)
include_directories(./public)  
include_directories(./)  
add_executable(${PROJECT_NAME} "main.cpp")
set_target_properties(${PROJECT_NAME} PROPERTIES LINKER_LANGUAGE CXX)
target_link_libraries(${PROJECT_NAME} /Users/dev/sandbox/cld2/lib/libcld2.a)

qt5_use_modules(${PROJECT_NAME} Core)

message("End line from cmakelist.txt ................ :-)"  ${PROJECT_NAME} )
