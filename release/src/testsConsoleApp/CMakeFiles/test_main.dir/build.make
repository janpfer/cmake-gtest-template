# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.27

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/kali/repos/cmake-gtest-template

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/kali/repos/cmake-gtest-template/release

# Include any dependencies generated for this target.
include src/testsConsoleApp/CMakeFiles/test_main.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/testsConsoleApp/CMakeFiles/test_main.dir/compiler_depend.make

# Include the progress variables for this target.
include src/testsConsoleApp/CMakeFiles/test_main.dir/progress.make

# Include the compile flags for this target's objects.
include src/testsConsoleApp/CMakeFiles/test_main.dir/flags.make

src/testsConsoleApp/CMakeFiles/test_main.dir/test_main.cpp.o: src/testsConsoleApp/CMakeFiles/test_main.dir/flags.make
src/testsConsoleApp/CMakeFiles/test_main.dir/test_main.cpp.o: /home/kali/repos/cmake-gtest-template/src/testsConsoleApp/test_main.cpp
src/testsConsoleApp/CMakeFiles/test_main.dir/test_main.cpp.o: src/testsConsoleApp/CMakeFiles/test_main.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/kali/repos/cmake-gtest-template/release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/testsConsoleApp/CMakeFiles/test_main.dir/test_main.cpp.o"
	cd /home/kali/repos/cmake-gtest-template/release/src/testsConsoleApp && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/testsConsoleApp/CMakeFiles/test_main.dir/test_main.cpp.o -MF CMakeFiles/test_main.dir/test_main.cpp.o.d -o CMakeFiles/test_main.dir/test_main.cpp.o -c /home/kali/repos/cmake-gtest-template/src/testsConsoleApp/test_main.cpp

src/testsConsoleApp/CMakeFiles/test_main.dir/test_main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/test_main.dir/test_main.cpp.i"
	cd /home/kali/repos/cmake-gtest-template/release/src/testsConsoleApp && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kali/repos/cmake-gtest-template/src/testsConsoleApp/test_main.cpp > CMakeFiles/test_main.dir/test_main.cpp.i

src/testsConsoleApp/CMakeFiles/test_main.dir/test_main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/test_main.dir/test_main.cpp.s"
	cd /home/kali/repos/cmake-gtest-template/release/src/testsConsoleApp && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kali/repos/cmake-gtest-template/src/testsConsoleApp/test_main.cpp -o CMakeFiles/test_main.dir/test_main.cpp.s

# Object files for target test_main
test_main_OBJECTS = \
"CMakeFiles/test_main.dir/test_main.cpp.o"

# External object files for target test_main
test_main_EXTERNAL_OBJECTS =

bin/test_main: src/testsConsoleApp/CMakeFiles/test_main.dir/test_main.cpp.o
bin/test_main: src/testsConsoleApp/CMakeFiles/test_main.dir/build.make
bin/test_main: lib/libgtest_main.a
bin/test_main: lib/libgtest.a
bin/test_main: src/testsConsoleApp/CMakeFiles/test_main.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/kali/repos/cmake-gtest-template/release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../bin/test_main"
	cd /home/kali/repos/cmake-gtest-template/release/src/testsConsoleApp && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_main.dir/link.txt --verbose=$(VERBOSE)
	cd /home/kali/repos/cmake-gtest-template/release/src/testsConsoleApp && /usr/bin/cmake -D TEST_TARGET=test_main -D TEST_EXECUTABLE=/home/kali/repos/cmake-gtest-template/release/bin/test_main -D TEST_EXECUTOR= -D TEST_WORKING_DIR=/home/kali/repos/cmake-gtest-template/release/src/testsConsoleApp -D TEST_EXTRA_ARGS= -D TEST_PROPERTIES= -D TEST_PREFIX= -D TEST_SUFFIX= -D TEST_FILTER= -D NO_PRETTY_TYPES=FALSE -D NO_PRETTY_VALUES=FALSE -D TEST_LIST=test_main_TESTS -D CTEST_FILE=/home/kali/repos/cmake-gtest-template/release/src/testsConsoleApp/test_main[1]_tests.cmake -D TEST_DISCOVERY_TIMEOUT=5 -D TEST_XML_OUTPUT_DIR= -P /usr/share/cmake-3.27/Modules/GoogleTestAddTests.cmake

# Rule to build all files generated by this target.
src/testsConsoleApp/CMakeFiles/test_main.dir/build: bin/test_main
.PHONY : src/testsConsoleApp/CMakeFiles/test_main.dir/build

src/testsConsoleApp/CMakeFiles/test_main.dir/clean:
	cd /home/kali/repos/cmake-gtest-template/release/src/testsConsoleApp && $(CMAKE_COMMAND) -P CMakeFiles/test_main.dir/cmake_clean.cmake
.PHONY : src/testsConsoleApp/CMakeFiles/test_main.dir/clean

src/testsConsoleApp/CMakeFiles/test_main.dir/depend:
	cd /home/kali/repos/cmake-gtest-template/release && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kali/repos/cmake-gtest-template /home/kali/repos/cmake-gtest-template/src/testsConsoleApp /home/kali/repos/cmake-gtest-template/release /home/kali/repos/cmake-gtest-template/release/src/testsConsoleApp /home/kali/repos/cmake-gtest-template/release/src/testsConsoleApp/CMakeFiles/test_main.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : src/testsConsoleApp/CMakeFiles/test_main.dir/depend

