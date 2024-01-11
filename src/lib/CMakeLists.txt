# src/lib/CMakeLists.txt
add_library(copyfi SHARED mylibrary.cpp)
target_include_directories(copyfi PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})
