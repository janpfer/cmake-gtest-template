rm -rf ./build
cmake -S . -B build -DCMAKE_BUILD_TYPE=Debug
cmake --build build
cd build
ctest --output-on-failure
lcov --directory . --capture --output-file coverage.info
genhtml -o coverage_report coverage.info
xdg-open file:///${PWD}/coverage_report/index.html &
cd ..
