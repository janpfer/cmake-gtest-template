add_test([=[MyLibraryTest.HelloWorld]=]  /home/kali/repos/cmake-gtest-template/release/bin/test_mylibrary [==[--gtest_filter=MyLibraryTest.HelloWorld]==] --gtest_also_run_disabled_tests)
set_tests_properties([=[MyLibraryTest.HelloWorld]=]  PROPERTIES WORKING_DIRECTORY /home/kali/repos/cmake-gtest-template/release/src/testsLib SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test([=[HelloTest.BasicAssertions]=]  /home/kali/repos/cmake-gtest-template/release/bin/test_mylibrary [==[--gtest_filter=HelloTest.BasicAssertions]==] --gtest_also_run_disabled_tests)
set_tests_properties([=[HelloTest.BasicAssertions]=]  PROPERTIES WORKING_DIRECTORY /home/kali/repos/cmake-gtest-template/release/src/testsLib SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
set(  test_mylibrary_TESTS MyLibraryTest.HelloWorld HelloTest.BasicAssertions)