# CMake generated Testfile for 
# Source directory: /work/assignments/hw3/programming/hw3_tests/stack_tests
# Build directory: /work/assignments/hw3/programming/hw3_tests/stack_tests
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(Stack.BasicString "/usr/bin/valgrind" "--tool=memcheck" "--leak-check=yes" "--trace-children=no" "--error-exitcode=113" "/work/assignments/hw3/programming/hw3_tests/stack_tests/stack_tests" "--gtest_filter=Stack.BasicString")
set_tests_properties(Stack.BasicString PROPERTIES  _BACKTRACE_TRIPLES "/work/assignments/hw3/programming/hw3_tests/test_cmake_lib/CustomTests.cmake;47;add_test;/work/assignments/hw3/programming/hw3_tests/test_cmake_lib/TestTargets.cmake;233;add_executable_gtests;/work/assignments/hw3/programming/hw3_tests/stack_tests/CMakeLists.txt;2;add_header_problem;/work/assignments/hw3/programming/hw3_tests/stack_tests/CMakeLists.txt;0;")
add_test(Stack.RandomInt "/usr/bin/valgrind" "--tool=memcheck" "--leak-check=yes" "--trace-children=no" "--error-exitcode=113" "/work/assignments/hw3/programming/hw3_tests/stack_tests/stack_tests" "--gtest_filter=Stack.RandomInt")
set_tests_properties(Stack.RandomInt PROPERTIES  _BACKTRACE_TRIPLES "/work/assignments/hw3/programming/hw3_tests/test_cmake_lib/CustomTests.cmake;47;add_test;/work/assignments/hw3/programming/hw3_tests/test_cmake_lib/TestTargets.cmake;233;add_executable_gtests;/work/assignments/hw3/programming/hw3_tests/stack_tests/CMakeLists.txt;2;add_header_problem;/work/assignments/hw3/programming/hw3_tests/stack_tests/CMakeLists.txt;0;")
