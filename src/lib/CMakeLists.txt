# src/lib/CMakeLists.txt
add_library(copyfi SHARED mylibrary.cpp)

# Include the common API header
target_include_directories(copyfi
    PUBLIC
        $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/../include/>
        $<INSTALL_INTERFACE:include/>
)

if (CodeCoverage MATCHES ON)
    set_target_properties(copyfi PROPERTIES COMPILE_FLAGS "-g -O0 --coverage -fprofile-arcs -ftest-coverage")
    set_target_properties(copyfi PROPERTIES LINK_FLAGS "--coverage")
endif()