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

# Source files
file(GLOB_RECURSE ALL_SOURCE_FILES
    ${CMAKE_SOURCE_DIR}/src/*.cpp
    ${CMAKE_SOURCE_DIR}/src/*.h
    ${CMAKE_SOURCE_DIR}/src/*/*.cpp
    ${CMAKE_SOURCE_DIR}/src/*/*.h
)

# Add subdirectories
add_subdirectory(src/lib)
add_subdirectory(src/consoleApp)
add_subdirectory(src/testsLib)

# Set up ClangFormat target for all source files
add_custom_target(
    clang-format
    COMMAND clang-format
    -i
    ${ALL_SOURCE_FILES}
    WORKING_DIRECTORY ${CMAKE_SOURCE_DIR}
    COMMENT "Running ClangFormat"
)

# Set up Cpplint target for all source files
add_custom_target(
    cpplint
    COMMAND cpplint
    ${ALL_SOURCE_FILES}
    WORKING_DIRECTORY ${CMAKE_SOURCE_DIR}
    COMMENT "Running Cpplint"
)
