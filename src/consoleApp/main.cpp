// src/app/main.cpp
#include <dlfcn.h>
#include <iostream>

typedef void (*HelloWorldFunction)();

int main() {
    void* libraryHandle = dlopen("./lib/libcopyfi.so", RTLD_LAZY);

    if (!libraryHandle) {
        std::cerr << "Error loading the library: " << dlerror() << std::endl;
        return 1;
    }

    HelloWorldFunction helloWorldFunc = (HelloWorldFunction)dlsym(libraryHandle, "helloWorld");

    if (!helloWorldFunc) {
        std::cerr << "Error getting symbol: " << dlerror() << std::endl;
        dlclose(libraryHandle);
        return 1;
    }

    helloWorldFunc();

    dlclose(libraryHandle);

    return 0;
}
