# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.18

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
CMAKE_SOURCE_DIR = /home/narek-pc/Documents/bigNumber

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/narek-pc/Documents/bigNumber/build

# Include any dependencies generated for this target.
include CMakeFiles/hugeint.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/hugeint.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/hugeint.dir/flags.make

CMakeFiles/hugeint.dir/driver/HugeIntTest.cpp.o: CMakeFiles/hugeint.dir/flags.make
CMakeFiles/hugeint.dir/driver/HugeIntTest.cpp.o: ../driver/HugeIntTest.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/narek-pc/Documents/bigNumber/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/hugeint.dir/driver/HugeIntTest.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/hugeint.dir/driver/HugeIntTest.cpp.o -c /home/narek-pc/Documents/bigNumber/driver/HugeIntTest.cpp

CMakeFiles/hugeint.dir/driver/HugeIntTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/hugeint.dir/driver/HugeIntTest.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/narek-pc/Documents/bigNumber/driver/HugeIntTest.cpp > CMakeFiles/hugeint.dir/driver/HugeIntTest.cpp.i

CMakeFiles/hugeint.dir/driver/HugeIntTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/hugeint.dir/driver/HugeIntTest.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/narek-pc/Documents/bigNumber/driver/HugeIntTest.cpp -o CMakeFiles/hugeint.dir/driver/HugeIntTest.cpp.s

CMakeFiles/hugeint.dir/lib/HugeInt.cpp.o: CMakeFiles/hugeint.dir/flags.make
CMakeFiles/hugeint.dir/lib/HugeInt.cpp.o: ../lib/HugeInt.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/narek-pc/Documents/bigNumber/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/hugeint.dir/lib/HugeInt.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/hugeint.dir/lib/HugeInt.cpp.o -c /home/narek-pc/Documents/bigNumber/lib/HugeInt.cpp

CMakeFiles/hugeint.dir/lib/HugeInt.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/hugeint.dir/lib/HugeInt.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/narek-pc/Documents/bigNumber/lib/HugeInt.cpp > CMakeFiles/hugeint.dir/lib/HugeInt.cpp.i

CMakeFiles/hugeint.dir/lib/HugeInt.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/hugeint.dir/lib/HugeInt.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/narek-pc/Documents/bigNumber/lib/HugeInt.cpp -o CMakeFiles/hugeint.dir/lib/HugeInt.cpp.s

# Object files for target hugeint
hugeint_OBJECTS = \
"CMakeFiles/hugeint.dir/driver/HugeIntTest.cpp.o" \
"CMakeFiles/hugeint.dir/lib/HugeInt.cpp.o"

# External object files for target hugeint
hugeint_EXTERNAL_OBJECTS =

hugeint: CMakeFiles/hugeint.dir/driver/HugeIntTest.cpp.o
hugeint: CMakeFiles/hugeint.dir/lib/HugeInt.cpp.o
hugeint: CMakeFiles/hugeint.dir/build.make
hugeint: CMakeFiles/hugeint.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/narek-pc/Documents/bigNumber/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable hugeint"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/hugeint.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/hugeint.dir/build: hugeint

.PHONY : CMakeFiles/hugeint.dir/build

CMakeFiles/hugeint.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/hugeint.dir/cmake_clean.cmake
.PHONY : CMakeFiles/hugeint.dir/clean

CMakeFiles/hugeint.dir/depend:
	cd /home/narek-pc/Documents/bigNumber/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/narek-pc/Documents/bigNumber /home/narek-pc/Documents/bigNumber /home/narek-pc/Documents/bigNumber/build /home/narek-pc/Documents/bigNumber/build /home/narek-pc/Documents/bigNumber/build/CMakeFiles/hugeint.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/hugeint.dir/depend

