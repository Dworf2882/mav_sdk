# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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
CMAKE_SOURCE_DIR = /home/dworf/mav_ws/src/up

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/dworf/mav_ws/build/up

# Include any dependencies generated for this target.
include CMakeFiles/take_off.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/take_off.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/take_off.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/take_off.dir/flags.make

CMakeFiles/take_off.dir/src/take_off.cpp.o: CMakeFiles/take_off.dir/flags.make
CMakeFiles/take_off.dir/src/take_off.cpp.o: /home/dworf/mav_ws/src/up/src/take_off.cpp
CMakeFiles/take_off.dir/src/take_off.cpp.o: CMakeFiles/take_off.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dworf/mav_ws/build/up/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/take_off.dir/src/take_off.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/take_off.dir/src/take_off.cpp.o -MF CMakeFiles/take_off.dir/src/take_off.cpp.o.d -o CMakeFiles/take_off.dir/src/take_off.cpp.o -c /home/dworf/mav_ws/src/up/src/take_off.cpp

CMakeFiles/take_off.dir/src/take_off.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/take_off.dir/src/take_off.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/dworf/mav_ws/src/up/src/take_off.cpp > CMakeFiles/take_off.dir/src/take_off.cpp.i

CMakeFiles/take_off.dir/src/take_off.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/take_off.dir/src/take_off.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/dworf/mav_ws/src/up/src/take_off.cpp -o CMakeFiles/take_off.dir/src/take_off.cpp.s

# Object files for target take_off
take_off_OBJECTS = \
"CMakeFiles/take_off.dir/src/take_off.cpp.o"

# External object files for target take_off
take_off_EXTERNAL_OBJECTS =

take_off: CMakeFiles/take_off.dir/src/take_off.cpp.o
take_off: CMakeFiles/take_off.dir/build.make
take_off: /opt/ros/humble/lib/librclcpp.so
take_off: /usr/lib/libmavsdk.so.2.13.0
take_off: /opt/ros/humble/lib/liblibstatistics_collector.so
take_off: /opt/ros/humble/lib/librcl.so
take_off: /opt/ros/humble/lib/librmw_implementation.so
take_off: /opt/ros/humble/lib/libament_index_cpp.so
take_off: /opt/ros/humble/lib/librcl_logging_spdlog.so
take_off: /opt/ros/humble/lib/librcl_logging_interface.so
take_off: /opt/ros/humble/lib/librcl_interfaces__rosidl_typesupport_fastrtps_c.so
take_off: /opt/ros/humble/lib/librcl_interfaces__rosidl_typesupport_introspection_c.so
take_off: /opt/ros/humble/lib/librcl_interfaces__rosidl_typesupport_fastrtps_cpp.so
take_off: /opt/ros/humble/lib/librcl_interfaces__rosidl_typesupport_introspection_cpp.so
take_off: /opt/ros/humble/lib/librcl_interfaces__rosidl_typesupport_cpp.so
take_off: /opt/ros/humble/lib/librcl_interfaces__rosidl_generator_py.so
take_off: /opt/ros/humble/lib/librcl_interfaces__rosidl_typesupport_c.so
take_off: /opt/ros/humble/lib/librcl_interfaces__rosidl_generator_c.so
take_off: /opt/ros/humble/lib/librcl_yaml_param_parser.so
take_off: /opt/ros/humble/lib/libyaml.so
take_off: /opt/ros/humble/lib/librosgraph_msgs__rosidl_typesupport_fastrtps_c.so
take_off: /opt/ros/humble/lib/librosgraph_msgs__rosidl_typesupport_fastrtps_cpp.so
take_off: /opt/ros/humble/lib/librosgraph_msgs__rosidl_typesupport_introspection_c.so
take_off: /opt/ros/humble/lib/librosgraph_msgs__rosidl_typesupport_introspection_cpp.so
take_off: /opt/ros/humble/lib/librosgraph_msgs__rosidl_typesupport_cpp.so
take_off: /opt/ros/humble/lib/librosgraph_msgs__rosidl_generator_py.so
take_off: /opt/ros/humble/lib/librosgraph_msgs__rosidl_typesupport_c.so
take_off: /opt/ros/humble/lib/librosgraph_msgs__rosidl_generator_c.so
take_off: /opt/ros/humble/lib/libstatistics_msgs__rosidl_typesupport_fastrtps_c.so
take_off: /opt/ros/humble/lib/libbuiltin_interfaces__rosidl_typesupport_fastrtps_c.so
take_off: /opt/ros/humble/lib/librosidl_typesupport_fastrtps_c.so
take_off: /opt/ros/humble/lib/libstatistics_msgs__rosidl_typesupport_fastrtps_cpp.so
take_off: /opt/ros/humble/lib/libbuiltin_interfaces__rosidl_typesupport_fastrtps_cpp.so
take_off: /opt/ros/humble/lib/librosidl_typesupport_fastrtps_cpp.so
take_off: /opt/ros/humble/lib/librmw.so
take_off: /opt/ros/humble/lib/libfastcdr.so.1.0.24
take_off: /opt/ros/humble/lib/libstatistics_msgs__rosidl_typesupport_introspection_c.so
take_off: /opt/ros/humble/lib/libbuiltin_interfaces__rosidl_typesupport_introspection_c.so
take_off: /opt/ros/humble/lib/libstatistics_msgs__rosidl_typesupport_introspection_cpp.so
take_off: /opt/ros/humble/lib/libbuiltin_interfaces__rosidl_typesupport_introspection_cpp.so
take_off: /opt/ros/humble/lib/librosidl_typesupport_introspection_cpp.so
take_off: /opt/ros/humble/lib/librosidl_typesupport_introspection_c.so
take_off: /opt/ros/humble/lib/libstatistics_msgs__rosidl_typesupport_cpp.so
take_off: /opt/ros/humble/lib/libbuiltin_interfaces__rosidl_typesupport_cpp.so
take_off: /opt/ros/humble/lib/librosidl_typesupport_cpp.so
take_off: /opt/ros/humble/lib/libstatistics_msgs__rosidl_generator_py.so
take_off: /opt/ros/humble/lib/libbuiltin_interfaces__rosidl_generator_py.so
take_off: /opt/ros/humble/lib/libstatistics_msgs__rosidl_typesupport_c.so
take_off: /opt/ros/humble/lib/libbuiltin_interfaces__rosidl_typesupport_c.so
take_off: /opt/ros/humble/lib/libstatistics_msgs__rosidl_generator_c.so
take_off: /opt/ros/humble/lib/libbuiltin_interfaces__rosidl_generator_c.so
take_off: /opt/ros/humble/lib/librosidl_typesupport_c.so
take_off: /opt/ros/humble/lib/librcpputils.so
take_off: /opt/ros/humble/lib/librosidl_runtime_c.so
take_off: /opt/ros/humble/lib/librcutils.so
take_off: /usr/lib/x86_64-linux-gnu/libpython3.10.so
take_off: /opt/ros/humble/lib/libtracetools.so
take_off: CMakeFiles/take_off.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/dworf/mav_ws/build/up/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable take_off"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/take_off.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/take_off.dir/build: take_off
.PHONY : CMakeFiles/take_off.dir/build

CMakeFiles/take_off.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/take_off.dir/cmake_clean.cmake
.PHONY : CMakeFiles/take_off.dir/clean

CMakeFiles/take_off.dir/depend:
	cd /home/dworf/mav_ws/build/up && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/dworf/mav_ws/src/up /home/dworf/mav_ws/src/up /home/dworf/mav_ws/build/up /home/dworf/mav_ws/build/up /home/dworf/mav_ws/build/up/CMakeFiles/take_off.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/take_off.dir/depend

