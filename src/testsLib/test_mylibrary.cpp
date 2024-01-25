// src/tests/test_mylibrary.cpp
#include <gtest/gtest.h>

#include "copyfi_h.h"

TEST(MyLibraryTest, HelloWorld) {
  // Call the function directly from the library (assuming it's linked)
  testing::internal::CaptureStdout();
  helloWorld();
  std::string output = testing::internal::GetCapturedStdout();

  EXPECT_EQ(output, "Hello World!\n");
}

int main(int argc, char **argv) {
  testing::InitGoogleTest(&argc, argv);
  return RUN_ALL_TESTS();
}
