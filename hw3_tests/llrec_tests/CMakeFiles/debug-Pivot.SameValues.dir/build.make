# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
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
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /work/assignments/hw3/programming/hw3_tests

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /work/assignments/hw3/programming/hw3_tests

# Utility rule file for debug-Pivot.SameValues.

# Include the progress variables for this target.
include llrec_tests/CMakeFiles/debug-Pivot.SameValues.dir/progress.make

llrec_tests/CMakeFiles/debug-Pivot.SameValues:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/work/assignments/hw3/programming/hw3_tests/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Debugging Pivot.SameValues with GDB..."
	cd /work/assignments/hw3/programming && gdb --args /work/assignments/hw3/programming/hw3_tests/llrec_tests/llrec_tests --gtest_filter=Pivot.SameValues

debug-Pivot.SameValues: llrec_tests/CMakeFiles/debug-Pivot.SameValues
debug-Pivot.SameValues: llrec_tests/CMakeFiles/debug-Pivot.SameValues.dir/build.make

.PHONY : debug-Pivot.SameValues

# Rule to build all files generated by this target.
llrec_tests/CMakeFiles/debug-Pivot.SameValues.dir/build: debug-Pivot.SameValues

.PHONY : llrec_tests/CMakeFiles/debug-Pivot.SameValues.dir/build

llrec_tests/CMakeFiles/debug-Pivot.SameValues.dir/clean:
	cd /work/assignments/hw3/programming/hw3_tests/llrec_tests && $(CMAKE_COMMAND) -P CMakeFiles/debug-Pivot.SameValues.dir/cmake_clean.cmake
.PHONY : llrec_tests/CMakeFiles/debug-Pivot.SameValues.dir/clean

llrec_tests/CMakeFiles/debug-Pivot.SameValues.dir/depend:
	cd /work/assignments/hw3/programming/hw3_tests && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /work/assignments/hw3/programming/hw3_tests /work/assignments/hw3/programming/hw3_tests/llrec_tests /work/assignments/hw3/programming/hw3_tests /work/assignments/hw3/programming/hw3_tests/llrec_tests /work/assignments/hw3/programming/hw3_tests/llrec_tests/CMakeFiles/debug-Pivot.SameValues.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : llrec_tests/CMakeFiles/debug-Pivot.SameValues.dir/depend

