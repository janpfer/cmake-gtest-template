# src/testsConsoleApp/CMakeLists.txt
project(test_main)

include(GoogleTest)

add_executable(test_main test_main.cpp)

# Include the common API header
target_include_directories(test_main
                           PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/../consoleApp/)

target_link_libraries(test_main PRIVATE GTest::gtest_main pthread)

gtest_discover_tests(test_main)
