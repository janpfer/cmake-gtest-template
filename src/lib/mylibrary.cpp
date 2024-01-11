// src/lib/mylibrary.cpp
#include <iostream>

extern "C" {
    void helloWorld() {
        std::cout << "Hello World!" << std::endl;
    }
}
