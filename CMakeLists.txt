# CMakeLists.txt
cmake_minimum_required(VERSION 3.15)
project(
    CopyFi
    VERSION 0.1
    DESCRIPTION "An example project with CMake & Google Test"
    LANGUAGES CXX
    )

# Set C++ standard
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Output directories
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)

# Add subdirectories
add_subdirectory(src/lib)
add_subdirectory(src/consoleApp)
add_subdirectory(src/testsLib)
