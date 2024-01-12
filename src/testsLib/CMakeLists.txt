# src/testsLib/CMakeLists.txt
project(test_mylibrary)

add_executable(
  test_mylibrary
  test_mylibrary.cpp
  test_hello.cpp
)

target_link_libraries(
  test_mylibrary PRIVATE
  copyfi
  GTest::gtest_main
  pthread
)

include(GoogleTest)
gtest_discover_tests(
  test_mylibrary
)
