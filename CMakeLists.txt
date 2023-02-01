cmake_minimum_required(VERSION 3.24)
project(brokenpch)

include(CheckIPOSupported)
check_ipo_supported()
set(CMAKE_INTERPROCEDURAL_OPTIMIZATION ON)

add_library(library_test STATIC lib.cpp)

add_library(pch STATIC pch.cpp)
target_precompile_headers(pch PUBLIC lib.h)

add_library(mod MODULE module.cpp)
target_link_libraries(mod PRIVATE library_test)
target_precompile_headers(mod REUSE_FROM pch)