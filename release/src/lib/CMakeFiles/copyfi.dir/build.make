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
include src/lib/CMakeFiles/copyfi.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/lib/CMakeFiles/copyfi.dir/compiler_depend.make

# Include the progress variables for this target.
include src/lib/CMakeFiles/copyfi.dir/progress.make

# Include the compile flags for this target's objects.
include src/lib/CMakeFiles/copyfi.dir/flags.make

src/lib/CMakeFiles/copyfi.dir/mylibrary.cpp.o: src/lib/CMakeFiles/copyfi.dir/flags.make
src/lib/CMakeFiles/copyfi.dir/mylibrary.cpp.o: /home/kali/repos/cmake-gtest-template/src/lib/mylibrary.cpp
src/lib/CMakeFiles/copyfi.dir/mylibrary.cpp.o: src/lib/CMakeFiles/copyfi.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/kali/repos/cmake-gtest-template/release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/lib/CMakeFiles/copyfi.dir/mylibrary.cpp.o"
	cd /home/kali/repos/cmake-gtest-template/release/src/lib && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/lib/CMakeFiles/copyfi.dir/mylibrary.cpp.o -MF CMakeFiles/copyfi.dir/mylibrary.cpp.o.d -o CMakeFiles/copyfi.dir/mylibrary.cpp.o -c /home/kali/repos/cmake-gtest-template/src/lib/mylibrary.cpp

src/lib/CMakeFiles/copyfi.dir/mylibrary.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/copyfi.dir/mylibrary.cpp.i"
	cd /home/kali/repos/cmake-gtest-template/release/src/lib && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kali/repos/cmake-gtest-template/src/lib/mylibrary.cpp > CMakeFiles/copyfi.dir/mylibrary.cpp.i

src/lib/CMakeFiles/copyfi.dir/mylibrary.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/copyfi.dir/mylibrary.cpp.s"
	cd /home/kali/repos/cmake-gtest-template/release/src/lib && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kali/repos/cmake-gtest-template/src/lib/mylibrary.cpp -o CMakeFiles/copyfi.dir/mylibrary.cpp.s

# Object files for target copyfi
copyfi_OBJECTS = \
"CMakeFiles/copyfi.dir/mylibrary.cpp.o"

# External object files for target copyfi
copyfi_EXTERNAL_OBJECTS =

lib/libcopyfi.so: src/lib/CMakeFiles/copyfi.dir/mylibrary.cpp.o
lib/libcopyfi.so: src/lib/CMakeFiles/copyfi.dir/build.make
lib/libcopyfi.so: src/lib/CMakeFiles/copyfi.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/kali/repos/cmake-gtest-template/release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library ../../lib/libcopyfi.so"
	cd /home/kali/repos/cmake-gtest-template/release/src/lib && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/copyfi.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/lib/CMakeFiles/copyfi.dir/build: lib/libcopyfi.so
.PHONY : src/lib/CMakeFiles/copyfi.dir/build

src/lib/CMakeFiles/copyfi.dir/clean:
	cd /home/kali/repos/cmake-gtest-template/release/src/lib && $(CMAKE_COMMAND) -P CMakeFiles/copyfi.dir/cmake_clean.cmake
.PHONY : src/lib/CMakeFiles/copyfi.dir/clean

src/lib/CMakeFiles/copyfi.dir/depend:
	cd /home/kali/repos/cmake-gtest-template/release && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kali/repos/cmake-gtest-template /home/kali/repos/cmake-gtest-template/src/lib /home/kali/repos/cmake-gtest-template/release /home/kali/repos/cmake-gtest-template/release/src/lib /home/kali/repos/cmake-gtest-template/release/src/lib/CMakeFiles/copyfi.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : src/lib/CMakeFiles/copyfi.dir/depend
