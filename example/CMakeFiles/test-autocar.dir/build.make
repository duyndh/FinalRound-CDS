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
include CMakeFiles/test-autocar.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/test-autocar.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/test-autocar.dir/flags.make

CMakeFiles/test-autocar.dir/main_pid/automaticCar.cpp.o: CMakeFiles/test-autocar.dir/flags.make
CMakeFiles/test-autocar.dir/main_pid/automaticCar.cpp.o: main_pid/automaticCar.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ubuntu/DriverlessCarChallenge_2017-2018/example/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/test-autocar.dir/main_pid/automaticCar.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/test-autocar.dir/main_pid/automaticCar.cpp.o -c /home/ubuntu/DriverlessCarChallenge_2017-2018/example/main_pid/automaticCar.cpp

CMakeFiles/test-autocar.dir/main_pid/automaticCar.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test-autocar.dir/main_pid/automaticCar.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/ubuntu/DriverlessCarChallenge_2017-2018/example/main_pid/automaticCar.cpp > CMakeFiles/test-autocar.dir/main_pid/automaticCar.cpp.i

CMakeFiles/test-autocar.dir/main_pid/automaticCar.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test-autocar.dir/main_pid/automaticCar.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/ubuntu/DriverlessCarChallenge_2017-2018/example/main_pid/automaticCar.cpp -o CMakeFiles/test-autocar.dir/main_pid/automaticCar.cpp.s

CMakeFiles/test-autocar.dir/main_pid/automaticCar.cpp.o.requires:
.PHONY : CMakeFiles/test-autocar.dir/main_pid/automaticCar.cpp.o.requires

CMakeFiles/test-autocar.dir/main_pid/automaticCar.cpp.o.provides: CMakeFiles/test-autocar.dir/main_pid/automaticCar.cpp.o.requires
	$(MAKE) -f CMakeFiles/test-autocar.dir/build.make CMakeFiles/test-autocar.dir/main_pid/automaticCar.cpp.o.provides.build
.PHONY : CMakeFiles/test-autocar.dir/main_pid/automaticCar.cpp.o.provides

CMakeFiles/test-autocar.dir/main_pid/automaticCar.cpp.o.provides.build: CMakeFiles/test-autocar.dir/main_pid/automaticCar.cpp.o

CMakeFiles/test-autocar.dir/main_pid/image_processing.cpp.o: CMakeFiles/test-autocar.dir/flags.make
CMakeFiles/test-autocar.dir/main_pid/image_processing.cpp.o: main_pid/image_processing.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ubuntu/DriverlessCarChallenge_2017-2018/example/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/test-autocar.dir/main_pid/image_processing.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/test-autocar.dir/main_pid/image_processing.cpp.o -c /home/ubuntu/DriverlessCarChallenge_2017-2018/example/main_pid/image_processing.cpp

CMakeFiles/test-autocar.dir/main_pid/image_processing.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test-autocar.dir/main_pid/image_processing.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/ubuntu/DriverlessCarChallenge_2017-2018/example/main_pid/image_processing.cpp > CMakeFiles/test-autocar.dir/main_pid/image_processing.cpp.i

CMakeFiles/test-autocar.dir/main_pid/image_processing.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test-autocar.dir/main_pid/image_processing.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/ubuntu/DriverlessCarChallenge_2017-2018/example/main_pid/image_processing.cpp -o CMakeFiles/test-autocar.dir/main_pid/image_processing.cpp.s

CMakeFiles/test-autocar.dir/main_pid/image_processing.cpp.o.requires:
.PHONY : CMakeFiles/test-autocar.dir/main_pid/image_processing.cpp.o.requires

CMakeFiles/test-autocar.dir/main_pid/image_processing.cpp.o.provides: CMakeFiles/test-autocar.dir/main_pid/image_processing.cpp.o.requires
	$(MAKE) -f CMakeFiles/test-autocar.dir/build.make CMakeFiles/test-autocar.dir/main_pid/image_processing.cpp.o.provides.build
.PHONY : CMakeFiles/test-autocar.dir/main_pid/image_processing.cpp.o.provides

CMakeFiles/test-autocar.dir/main_pid/image_processing.cpp.o.provides.build: CMakeFiles/test-autocar.dir/main_pid/image_processing.cpp.o

CMakeFiles/test-autocar.dir/main_pid/depth_processing.cpp.o: CMakeFiles/test-autocar.dir/flags.make
CMakeFiles/test-autocar.dir/main_pid/depth_processing.cpp.o: main_pid/depth_processing.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ubuntu/DriverlessCarChallenge_2017-2018/example/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/test-autocar.dir/main_pid/depth_processing.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/test-autocar.dir/main_pid/depth_processing.cpp.o -c /home/ubuntu/DriverlessCarChallenge_2017-2018/example/main_pid/depth_processing.cpp

CMakeFiles/test-autocar.dir/main_pid/depth_processing.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test-autocar.dir/main_pid/depth_processing.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/ubuntu/DriverlessCarChallenge_2017-2018/example/main_pid/depth_processing.cpp > CMakeFiles/test-autocar.dir/main_pid/depth_processing.cpp.i

CMakeFiles/test-autocar.dir/main_pid/depth_processing.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test-autocar.dir/main_pid/depth_processing.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/ubuntu/DriverlessCarChallenge_2017-2018/example/main_pid/depth_processing.cpp -o CMakeFiles/test-autocar.dir/main_pid/depth_processing.cpp.s

CMakeFiles/test-autocar.dir/main_pid/depth_processing.cpp.o.requires:
.PHONY : CMakeFiles/test-autocar.dir/main_pid/depth_processing.cpp.o.requires

CMakeFiles/test-autocar.dir/main_pid/depth_processing.cpp.o.provides: CMakeFiles/test-autocar.dir/main_pid/depth_processing.cpp.o.requires
	$(MAKE) -f CMakeFiles/test-autocar.dir/build.make CMakeFiles/test-autocar.dir/main_pid/depth_processing.cpp.o.provides.build
.PHONY : CMakeFiles/test-autocar.dir/main_pid/depth_processing.cpp.o.provides

CMakeFiles/test-autocar.dir/main_pid/depth_processing.cpp.o.provides.build: CMakeFiles/test-autocar.dir/main_pid/depth_processing.cpp.o

CMakeFiles/test-autocar.dir/main_pid/lane_detection.cpp.o: CMakeFiles/test-autocar.dir/flags.make
CMakeFiles/test-autocar.dir/main_pid/lane_detection.cpp.o: main_pid/lane_detection.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ubuntu/DriverlessCarChallenge_2017-2018/example/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/test-autocar.dir/main_pid/lane_detection.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/test-autocar.dir/main_pid/lane_detection.cpp.o -c /home/ubuntu/DriverlessCarChallenge_2017-2018/example/main_pid/lane_detection.cpp

CMakeFiles/test-autocar.dir/main_pid/lane_detection.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test-autocar.dir/main_pid/lane_detection.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/ubuntu/DriverlessCarChallenge_2017-2018/example/main_pid/lane_detection.cpp > CMakeFiles/test-autocar.dir/main_pid/lane_detection.cpp.i

CMakeFiles/test-autocar.dir/main_pid/lane_detection.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test-autocar.dir/main_pid/lane_detection.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/ubuntu/DriverlessCarChallenge_2017-2018/example/main_pid/lane_detection.cpp -o CMakeFiles/test-autocar.dir/main_pid/lane_detection.cpp.s

CMakeFiles/test-autocar.dir/main_pid/lane_detection.cpp.o.requires:
.PHONY : CMakeFiles/test-autocar.dir/main_pid/lane_detection.cpp.o.requires

CMakeFiles/test-autocar.dir/main_pid/lane_detection.cpp.o.provides: CMakeFiles/test-autocar.dir/main_pid/lane_detection.cpp.o.requires
	$(MAKE) -f CMakeFiles/test-autocar.dir/build.make CMakeFiles/test-autocar.dir/main_pid/lane_detection.cpp.o.provides.build
.PHONY : CMakeFiles/test-autocar.dir/main_pid/lane_detection.cpp.o.provides

CMakeFiles/test-autocar.dir/main_pid/lane_detection.cpp.o.provides.build: CMakeFiles/test-autocar.dir/main_pid/lane_detection.cpp.o

CMakeFiles/test-autocar.dir/main_pid/sign.cpp.o: CMakeFiles/test-autocar.dir/flags.make
CMakeFiles/test-autocar.dir/main_pid/sign.cpp.o: main_pid/sign.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ubuntu/DriverlessCarChallenge_2017-2018/example/CMakeFiles $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/test-autocar.dir/main_pid/sign.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/test-autocar.dir/main_pid/sign.cpp.o -c /home/ubuntu/DriverlessCarChallenge_2017-2018/example/main_pid/sign.cpp

CMakeFiles/test-autocar.dir/main_pid/sign.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test-autocar.dir/main_pid/sign.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/ubuntu/DriverlessCarChallenge_2017-2018/example/main_pid/sign.cpp > CMakeFiles/test-autocar.dir/main_pid/sign.cpp.i

CMakeFiles/test-autocar.dir/main_pid/sign.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test-autocar.dir/main_pid/sign.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/ubuntu/DriverlessCarChallenge_2017-2018/example/main_pid/sign.cpp -o CMakeFiles/test-autocar.dir/main_pid/sign.cpp.s

CMakeFiles/test-autocar.dir/main_pid/sign.cpp.o.requires:
.PHONY : CMakeFiles/test-autocar.dir/main_pid/sign.cpp.o.requires

CMakeFiles/test-autocar.dir/main_pid/sign.cpp.o.provides: CMakeFiles/test-autocar.dir/main_pid/sign.cpp.o.requires
	$(MAKE) -f CMakeFiles/test-autocar.dir/build.make CMakeFiles/test-autocar.dir/main_pid/sign.cpp.o.provides.build
.PHONY : CMakeFiles/test-autocar.dir/main_pid/sign.cpp.o.provides

CMakeFiles/test-autocar.dir/main_pid/sign.cpp.o.provides.build: CMakeFiles/test-autocar.dir/main_pid/sign.cpp.o

CMakeFiles/test-autocar.dir/main_pid/control.cpp.o: CMakeFiles/test-autocar.dir/flags.make
CMakeFiles/test-autocar.dir/main_pid/control.cpp.o: main_pid/control.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ubuntu/DriverlessCarChallenge_2017-2018/example/CMakeFiles $(CMAKE_PROGRESS_6)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/test-autocar.dir/main_pid/control.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/test-autocar.dir/main_pid/control.cpp.o -c /home/ubuntu/DriverlessCarChallenge_2017-2018/example/main_pid/control.cpp

CMakeFiles/test-autocar.dir/main_pid/control.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test-autocar.dir/main_pid/control.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/ubuntu/DriverlessCarChallenge_2017-2018/example/main_pid/control.cpp > CMakeFiles/test-autocar.dir/main_pid/control.cpp.i

CMakeFiles/test-autocar.dir/main_pid/control.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test-autocar.dir/main_pid/control.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/ubuntu/DriverlessCarChallenge_2017-2018/example/main_pid/control.cpp -o CMakeFiles/test-autocar.dir/main_pid/control.cpp.s

CMakeFiles/test-autocar.dir/main_pid/control.cpp.o.requires:
.PHONY : CMakeFiles/test-autocar.dir/main_pid/control.cpp.o.requires

CMakeFiles/test-autocar.dir/main_pid/control.cpp.o.provides: CMakeFiles/test-autocar.dir/main_pid/control.cpp.o.requires
	$(MAKE) -f CMakeFiles/test-autocar.dir/build.make CMakeFiles/test-autocar.dir/main_pid/control.cpp.o.provides.build
.PHONY : CMakeFiles/test-autocar.dir/main_pid/control.cpp.o.provides

CMakeFiles/test-autocar.dir/main_pid/control.cpp.o.provides.build: CMakeFiles/test-autocar.dir/main_pid/control.cpp.o

# Object files for target test-autocar
test__autocar_OBJECTS = \
"CMakeFiles/test-autocar.dir/main_pid/automaticCar.cpp.o" \
"CMakeFiles/test-autocar.dir/main_pid/image_processing.cpp.o" \
"CMakeFiles/test-autocar.dir/main_pid/depth_processing.cpp.o" \
"CMakeFiles/test-autocar.dir/main_pid/lane_detection.cpp.o" \
"CMakeFiles/test-autocar.dir/main_pid/sign.cpp.o" \
"CMakeFiles/test-autocar.dir/main_pid/control.cpp.o"

# External object files for target test-autocar
test__autocar_EXTERNAL_OBJECTS =

bin/Release/test-autocar: CMakeFiles/test-autocar.dir/main_pid/automaticCar.cpp.o
bin/Release/test-autocar: CMakeFiles/test-autocar.dir/main_pid/image_processing.cpp.o
bin/Release/test-autocar: CMakeFiles/test-autocar.dir/main_pid/depth_processing.cpp.o
bin/Release/test-autocar: CMakeFiles/test-autocar.dir/main_pid/lane_detection.cpp.o
bin/Release/test-autocar: CMakeFiles/test-autocar.dir/main_pid/sign.cpp.o
bin/Release/test-autocar: CMakeFiles/test-autocar.dir/main_pid/control.cpp.o
bin/Release/test-autocar: CMakeFiles/test-autocar.dir/build.make
bin/Release/test-autocar: bin/Release/libvanishing-point.a
bin/Release/test-autocar: bin/Release/libi2c-pwm.a
bin/Release/test-autocar: bin/Release/libuart.a
bin/Release/test-autocar: bin/Release/libkinect-cv2.a
bin/Release/test-autocar: bin/Release/libHAL.a
bin/Release/test-autocar: bin/Release/libmultilane.a
bin/Release/test-autocar: /usr/local/lib/libopencv_videostab.so.3.2.0
bin/Release/test-autocar: /usr/local/lib/libopencv_ccalib.so.3.2.0
bin/Release/test-autocar: /usr/local/lib/libopencv_fuzzy.so.3.2.0
bin/Release/test-autocar: /usr/local/lib/libopencv_rgbd.so.3.2.0
bin/Release/test-autocar: /usr/local/lib/libopencv_xfeatures2d.so.3.2.0
bin/Release/test-autocar: /usr/local/lib/libopencv_ximgproc.so.3.2.0
bin/Release/test-autocar: /usr/local/lib/libopencv_xobjdetect.so.3.2.0
bin/Release/test-autocar: /usr/local/lib/libopencv_xphoto.so.3.2.0
bin/Release/test-autocar: /usr/local/lib/libopencv_shape.so.3.2.0
bin/Release/test-autocar: /usr/local/lib/libopencv_video.so.3.2.0
bin/Release/test-autocar: /usr/local/lib/libopencv_calib3d.so.3.2.0
bin/Release/test-autocar: /usr/local/lib/libopencv_features2d.so.3.2.0
bin/Release/test-autocar: /usr/local/lib/libopencv_flann.so.3.2.0
bin/Release/test-autocar: /usr/local/lib/libopencv_objdetect.so.3.2.0
bin/Release/test-autocar: /usr/local/lib/libopencv_ml.so.3.2.0
bin/Release/test-autocar: /usr/local/lib/libopencv_highgui.so.3.2.0
bin/Release/test-autocar: /usr/local/lib/libopencv_photo.so.3.2.0
bin/Release/test-autocar: /usr/local/lib/libopencv_videoio.so.3.2.0
bin/Release/test-autocar: /usr/local/lib/libopencv_imgcodecs.so.3.2.0
bin/Release/test-autocar: /usr/local/lib/libopencv_imgproc.so.3.2.0
bin/Release/test-autocar: /usr/local/lib/libopencv_core.so.3.2.0
bin/Release/test-autocar: CMakeFiles/test-autocar.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable bin/Release/test-autocar"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test-autocar.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/test-autocar.dir/build: bin/Release/test-autocar
.PHONY : CMakeFiles/test-autocar.dir/build

CMakeFiles/test-autocar.dir/requires: CMakeFiles/test-autocar.dir/main_pid/automaticCar.cpp.o.requires
CMakeFiles/test-autocar.dir/requires: CMakeFiles/test-autocar.dir/main_pid/image_processing.cpp.o.requires
CMakeFiles/test-autocar.dir/requires: CMakeFiles/test-autocar.dir/main_pid/depth_processing.cpp.o.requires
CMakeFiles/test-autocar.dir/requires: CMakeFiles/test-autocar.dir/main_pid/lane_detection.cpp.o.requires
CMakeFiles/test-autocar.dir/requires: CMakeFiles/test-autocar.dir/main_pid/sign.cpp.o.requires
CMakeFiles/test-autocar.dir/requires: CMakeFiles/test-autocar.dir/main_pid/control.cpp.o.requires
.PHONY : CMakeFiles/test-autocar.dir/requires

CMakeFiles/test-autocar.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/test-autocar.dir/cmake_clean.cmake
.PHONY : CMakeFiles/test-autocar.dir/clean

CMakeFiles/test-autocar.dir/depend:
	cd /home/ubuntu/DriverlessCarChallenge_2017-2018/example && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ubuntu/DriverlessCarChallenge_2017-2018/example /home/ubuntu/DriverlessCarChallenge_2017-2018/example /home/ubuntu/DriverlessCarChallenge_2017-2018/example /home/ubuntu/DriverlessCarChallenge_2017-2018/example /home/ubuntu/DriverlessCarChallenge_2017-2018/example/CMakeFiles/test-autocar.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/test-autocar.dir/depend

