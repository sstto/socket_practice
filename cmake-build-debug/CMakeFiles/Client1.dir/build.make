# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.19

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
CMAKE_COMMAND = /home/sim/바탕화면/clion-2021.1.2/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/sim/바탕화면/clion-2021.1.2/bin/cmake/linux/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/sim/CLionProjects/SocketProgramming

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/sim/CLionProjects/SocketProgramming/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/Client1.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Client1.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Client1.dir/flags.make

CMakeFiles/Client1.dir/echo_client.c.o: CMakeFiles/Client1.dir/flags.make
CMakeFiles/Client1.dir/echo_client.c.o: ../echo_client.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sim/CLionProjects/SocketProgramming/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/Client1.dir/echo_client.c.o"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Client1.dir/echo_client.c.o -c /home/sim/CLionProjects/SocketProgramming/echo_client.c

CMakeFiles/Client1.dir/echo_client.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Client1.dir/echo_client.c.i"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/sim/CLionProjects/SocketProgramming/echo_client.c > CMakeFiles/Client1.dir/echo_client.c.i

CMakeFiles/Client1.dir/echo_client.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Client1.dir/echo_client.c.s"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/sim/CLionProjects/SocketProgramming/echo_client.c -o CMakeFiles/Client1.dir/echo_client.c.s

# Object files for target Client1
Client1_OBJECTS = \
"CMakeFiles/Client1.dir/echo_client.c.o"

# External object files for target Client1
Client1_EXTERNAL_OBJECTS =

Client1: CMakeFiles/Client1.dir/echo_client.c.o
Client1: CMakeFiles/Client1.dir/build.make
Client1: CMakeFiles/Client1.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/sim/CLionProjects/SocketProgramming/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable Client1"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Client1.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Client1.dir/build: Client1

.PHONY : CMakeFiles/Client1.dir/build

CMakeFiles/Client1.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Client1.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Client1.dir/clean

CMakeFiles/Client1.dir/depend:
	cd /home/sim/CLionProjects/SocketProgramming/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/sim/CLionProjects/SocketProgramming /home/sim/CLionProjects/SocketProgramming /home/sim/CLionProjects/SocketProgramming/cmake-build-debug /home/sim/CLionProjects/SocketProgramming/cmake-build-debug /home/sim/CLionProjects/SocketProgramming/cmake-build-debug/CMakeFiles/Client1.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Client1.dir/depend

