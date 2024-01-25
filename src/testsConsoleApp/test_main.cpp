// src/tests/test_mylibrary.cpp
#include <gtest/gtest.h>

#include "some.h"

TEST(MyMainTest, HelloComputer) {
  // Call the function directly from the library (assuming it's linked)
  testing::internal::CaptureStdout();
  helloComputer();
  std::string output = testing::internal::GetCapturedStdout();

  EXPECT_EQ(output, "Hello Computer!\n");
}

int main(int argc, char **argv) {
  testing::InitGoogleTest(&argc, argv);
  return RUN_ALL_TESTS();
}
