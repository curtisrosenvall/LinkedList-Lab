# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.24

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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/Users/curtisrosenvall/Desktop/creativeProject 4/LinkedList-Lab"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/Users/curtisrosenvall/Desktop/creativeProject 4/LinkedList-Lab/cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/scratch.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/scratch.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/scratch.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/scratch.dir/flags.make

CMakeFiles/scratch.dir/scratch.cpp.o: CMakeFiles/scratch.dir/flags.make
CMakeFiles/scratch.dir/scratch.cpp.o: /Users/curtisrosenvall/Desktop/creativeProject\ 4/LinkedList-Lab/scratch.cpp
CMakeFiles/scratch.dir/scratch.cpp.o: CMakeFiles/scratch.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/curtisrosenvall/Desktop/creativeProject 4/LinkedList-Lab/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/scratch.dir/scratch.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/scratch.dir/scratch.cpp.o -MF CMakeFiles/scratch.dir/scratch.cpp.o.d -o CMakeFiles/scratch.dir/scratch.cpp.o -c "/Users/curtisrosenvall/Desktop/creativeProject 4/LinkedList-Lab/scratch.cpp"

CMakeFiles/scratch.dir/scratch.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/scratch.dir/scratch.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/curtisrosenvall/Desktop/creativeProject 4/LinkedList-Lab/scratch.cpp" > CMakeFiles/scratch.dir/scratch.cpp.i

CMakeFiles/scratch.dir/scratch.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/scratch.dir/scratch.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/curtisrosenvall/Desktop/creativeProject 4/LinkedList-Lab/scratch.cpp" -o CMakeFiles/scratch.dir/scratch.cpp.s

# Object files for target scratch
scratch_OBJECTS = \
"CMakeFiles/scratch.dir/scratch.cpp.o"

# External object files for target scratch
scratch_EXTERNAL_OBJECTS =

scratch: CMakeFiles/scratch.dir/scratch.cpp.o
scratch: CMakeFiles/scratch.dir/build.make
scratch: CMakeFiles/scratch.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/Users/curtisrosenvall/Desktop/creativeProject 4/LinkedList-Lab/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable scratch"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/scratch.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/scratch.dir/build: scratch
.PHONY : CMakeFiles/scratch.dir/build

CMakeFiles/scratch.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/scratch.dir/cmake_clean.cmake
.PHONY : CMakeFiles/scratch.dir/clean

CMakeFiles/scratch.dir/depend:
	cd "/Users/curtisrosenvall/Desktop/creativeProject 4/LinkedList-Lab/cmake-build-debug" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/curtisrosenvall/Desktop/creativeProject 4/LinkedList-Lab" "/Users/curtisrosenvall/Desktop/creativeProject 4/LinkedList-Lab" "/Users/curtisrosenvall/Desktop/creativeProject 4/LinkedList-Lab/cmake-build-debug" "/Users/curtisrosenvall/Desktop/creativeProject 4/LinkedList-Lab/cmake-build-debug" "/Users/curtisrosenvall/Desktop/creativeProject 4/LinkedList-Lab/cmake-build-debug/CMakeFiles/scratch.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/scratch.dir/depend

