# src/testsLib/CMakeLists.txt

include(FetchContent)
FetchContent_Declare(
  googletest
  URL https://github.com/google/googletest/archive/03597a01ee50ed33e9dfd640b249b4be3799d395.zip
)
# For Windows: Prevent overriding the parent project's compiler/linker settings
set(gtest_force_shared_crt ON CACHE BOOL "" FORCE)
FetchContent_MakeAvailable(googletest)

# Ensure that the GTEST_INCLUDE_DIRS variable is set correctly
include_directories(${googletest_SOURCE_DIR}/googletest/include)

# Set FETCHCONTENT_SOURCE_DIR_GOOGLETEST to suppress the warning
set(FETCHCONTENT_SOURCE_DIR_GOOGLETEST ${googletest_SOURCE_DIR} CACHE INTERNAL "")

enable_testing()

add_executable(test_mylibrary test_mylibrary.cpp)
target_link_libraries(test_mylibrary PRIVATE copyfi ${GTEST_LIBRARIES} pthread)

include(GoogleTest)
gtest_discover_tests(test_mylibrary)
