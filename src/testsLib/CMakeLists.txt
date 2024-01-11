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
