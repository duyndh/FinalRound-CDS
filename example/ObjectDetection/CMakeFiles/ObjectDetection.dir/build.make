# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.2

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
CMAKE_SOURCE_DIR = /home/ubuntu/DriverlessCarChallenge_2017-2018/example

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ubuntu/DriverlessCarChallenge_2017-2018/example

# Include any dependencies generated for this target.
include ObjectDetection/CMakeFiles/ObjectDetection.dir/depend.make

# Include the progress variables for this target.
include ObjectDetection/CMakeFiles/ObjectDetection.dir/progress.make

# Include the compile flags for this target's objects.
include ObjectDetection/CMakeFiles/ObjectDetection.dir/flags.make

ObjectDetection/CMakeFiles/ObjectDetection.dir/SignDetection.cpp.o: ObjectDetection/CMakeFiles/ObjectDetection.dir/flags.make
ObjectDetection/CMakeFiles/ObjectDetection.dir/SignDetection.cpp.o: ObjectDetection/SignDetection.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ubuntu/DriverlessCarChallenge_2017-2018/example/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object ObjectDetection/CMakeFiles/ObjectDetection.dir/SignDetection.cpp.o"
	cd /home/ubuntu/DriverlessCarChallenge_2017-2018/example/ObjectDetection && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/ObjectDetection.dir/SignDetection.cpp.o -c /home/ubuntu/DriverlessCarChallenge_2017-2018/example/ObjectDetection/SignDetection.cpp

ObjectDetection/CMakeFiles/ObjectDetection.dir/SignDetection.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ObjectDetection.dir/SignDetection.cpp.i"
	cd /home/ubuntu/DriverlessCarChallenge_2017-2018/example/ObjectDetection && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/ubuntu/DriverlessCarChallenge_2017-2018/example/ObjectDetection/SignDetection.cpp > CMakeFiles/ObjectDetection.dir/SignDetection.cpp.i

ObjectDetection/CMakeFiles/ObjectDetection.dir/SignDetection.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ObjectDetection.dir/SignDetection.cpp.s"
	cd /home/ubuntu/DriverlessCarChallenge_2017-2018/example/ObjectDetection && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/ubuntu/DriverlessCarChallenge_2017-2018/example/ObjectDetection/SignDetection.cpp -o CMakeFiles/ObjectDetection.dir/SignDetection.cpp.s

ObjectDetection/CMakeFiles/ObjectDetection.dir/SignDetection.cpp.o.requires:
.PHONY : ObjectDetection/CMakeFiles/ObjectDetection.dir/SignDetection.cpp.o.requires

ObjectDetection/CMakeFiles/ObjectDetection.dir/SignDetection.cpp.o.provides: ObjectDetection/CMakeFiles/ObjectDetection.dir/SignDetection.cpp.o.requires
	$(MAKE) -f ObjectDetection/CMakeFiles/ObjectDetection.dir/build.make ObjectDetection/CMakeFiles/ObjectDetection.dir/SignDetection.cpp.o.provides.build
.PHONY : ObjectDetection/CMakeFiles/ObjectDetection.dir/SignDetection.cpp.o.provides

ObjectDetection/CMakeFiles/ObjectDetection.dir/SignDetection.cpp.o.provides.build: ObjectDetection/CMakeFiles/ObjectDetection.dir/SignDetection.cpp.o

# Object files for target ObjectDetection
ObjectDetection_OBJECTS = \
"CMakeFiles/ObjectDetection.dir/SignDetection.cpp.o"

# External object files for target ObjectDetection
ObjectDetection_EXTERNAL_OBJECTS =

bin/Release/libObjectDetection.a: ObjectDetection/CMakeFiles/ObjectDetection.dir/SignDetection.cpp.o
bin/Release/libObjectDetection.a: ObjectDetection/CMakeFiles/ObjectDetection.dir/build.make
bin/Release/libObjectDetection.a: ObjectDetection/CMakeFiles/ObjectDetection.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX static library ../bin/Release/libObjectDetection.a"
	cd /home/ubuntu/DriverlessCarChallenge_2017-2018/example/ObjectDetection && $(CMAKE_COMMAND) -P CMakeFiles/ObjectDetection.dir/cmake_clean_target.cmake
	cd /home/ubuntu/DriverlessCarChallenge_2017-2018/example/ObjectDetection && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ObjectDetection.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
ObjectDetection/CMakeFiles/ObjectDetection.dir/build: bin/Release/libObjectDetection.a
.PHONY : ObjectDetection/CMakeFiles/ObjectDetection.dir/build

ObjectDetection/CMakeFiles/ObjectDetection.dir/requires: ObjectDetection/CMakeFiles/ObjectDetection.dir/SignDetection.cpp.o.requires
.PHONY : ObjectDetection/CMakeFiles/ObjectDetection.dir/requires

ObjectDetection/CMakeFiles/ObjectDetection.dir/clean:
	cd /home/ubuntu/DriverlessCarChallenge_2017-2018/example/ObjectDetection && $(CMAKE_COMMAND) -P CMakeFiles/ObjectDetection.dir/cmake_clean.cmake
.PHONY : ObjectDetection/CMakeFiles/ObjectDetection.dir/clean

ObjectDetection/CMakeFiles/ObjectDetection.dir/depend:
	cd /home/ubuntu/DriverlessCarChallenge_2017-2018/example && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ubuntu/DriverlessCarChallenge_2017-2018/example /home/ubuntu/DriverlessCarChallenge_2017-2018/example/ObjectDetection /home/ubuntu/DriverlessCarChallenge_2017-2018/example /home/ubuntu/DriverlessCarChallenge_2017-2018/example/ObjectDetection /home/ubuntu/DriverlessCarChallenge_2017-2018/example/ObjectDetection/CMakeFiles/ObjectDetection.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : ObjectDetection/CMakeFiles/ObjectDetection.dir/depend

