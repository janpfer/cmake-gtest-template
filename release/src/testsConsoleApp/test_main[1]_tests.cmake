add_test([=[MyMainTest.HelloComputer]=]  /home/kali/repos/cmake-gtest-template/release/bin/test_main [==[--gtest_filter=MyMainTest.HelloComputer]==] --gtest_also_run_disabled_tests)
set_tests_properties([=[MyMainTest.HelloComputer]=]  PROPERTIES WORKING_DIRECTORY /home/kali/repos/cmake-gtest-template/release/src/testsConsoleApp SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
set(  test_main_TESTS MyMainTest.HelloComputer)
