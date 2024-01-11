// src/tests/test_mylibrary.cpp
#include <gtest/gtest.h>
#include <dlfcn.h>

// Forward declaration for the function pointer type
typedef void (*HelloWorldFunction)();

TEST(MyLibraryTest, HelloWorld) {
    void* libraryHandle = dlopen("./lib/libcopyfi.so", RTLD_LAZY);

    ASSERT_TRUE(libraryHandle != nullptr);

    // Use the correct function pointer type
    HelloWorldFunction helloWorldFunc = (HelloWorldFunction)dlsym(libraryHandle, "helloWorld");

    ASSERT_TRUE(helloWorldFunc != nullptr);

    testing::internal::CaptureStdout();
    helloWorldFunc();
    std::string output = testing::internal::GetCapturedStdout();

    dlclose(libraryHandle);

    EXPECT_EQ(output, "Hello World!\n");
}

int main(int argc, char** argv) {
    testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}
