# src/consoleApp/CMakeLists.txt
project(ccopify)

add_executable(ccopyfi main.cpp)

# Include the common API header
target_include_directories(ccopyfi PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/../include/)

# Link against the copyfi library
target_link_libraries(ccopyfi PRIVATE copyfi)
