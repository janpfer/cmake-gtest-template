rm -rf ./build
cmake -S . -B build
cmake --build build
cd build/src/testsLib/ && ctest --output-on-failure
cd ../../..