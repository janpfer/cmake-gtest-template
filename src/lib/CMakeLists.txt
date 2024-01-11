# src/lib/CMakeLists.txt
add_library(copyfi SHARED mylibrary.cpp)

# Include the common API header
target_include_directories(copyfi
    PUBLIC
        $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/../include/>
        $<INSTALL_INTERFACE:include/>
)
