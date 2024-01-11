# src/consoleApp/CMakeLists.txt
add_executable(ccopyfi main.cpp)

# Link the executable with the library
target_link_libraries(ccopyfi PRIVATE copyfi)
