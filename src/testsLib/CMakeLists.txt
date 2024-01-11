# src/testsLib/CMakeLists.txt
project(my_project)

include(FetchContent)
FetchContent_Declare(
  googletest
  URL https://github.com/google/googletest/archive/03597a01ee50ed33e9dfd640b249b4be3799d395.zip
)
# For Windows: Prevent overriding the parent project's compiler/linker settings
set(gtest_force_shared_crt ON CACHE BOOL "" FORCE)
FetchContent_MakeAvailable(googletest)

enable_testing()

# Add code coverage flags
option(CodeCoverage "CodeCoverage" OFF)

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

if (CodeCoverage MATCHES ON)
    set_target_properties(test_mylibrary PROPERTIES COMPILE_FLAGS "-g -O0 --coverage -fprofile-arcs -ftest-coverage")
    set_target_properties(test_mylibrary PROPERTIES LINK_FLAGS "--coverage")
endif()

include(GoogleTest)
gtest_discover_tests(
  test_mylibrary
)
