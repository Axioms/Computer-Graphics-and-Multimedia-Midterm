# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.20

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2021.2\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2021.2\bin\cmake\win\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "D:\data\drive\College\Forth Year\Fall Semester\Computer Graphics and Multimedia\Midterm\question6-code"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "D:\data\drive\College\Forth Year\Fall Semester\Computer Graphics and Multimedia\Midterm\question6-code\cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/application.dir/depend.make
# Include the progress variables for this target.
include CMakeFiles/application.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/application.dir/flags.make

CMakeFiles/application.dir/main_driver.cpp.obj: CMakeFiles/application.dir/flags.make
CMakeFiles/application.dir/main_driver.cpp.obj: CMakeFiles/application.dir/includes_CXX.rsp
CMakeFiles/application.dir/main_driver.cpp.obj: ../main_driver.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="D:\data\drive\College\Forth Year\Fall Semester\Computer Graphics and Multimedia\Midterm\question6-code\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/application.dir/main_driver.cpp.obj"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\application.dir\main_driver.cpp.obj -c "D:\data\drive\College\Forth Year\Fall Semester\Computer Graphics and Multimedia\Midterm\question6-code\main_driver.cpp"

CMakeFiles/application.dir/main_driver.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/application.dir/main_driver.cpp.i"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "D:\data\drive\College\Forth Year\Fall Semester\Computer Graphics and Multimedia\Midterm\question6-code\main_driver.cpp" > CMakeFiles\application.dir\main_driver.cpp.i

CMakeFiles/application.dir/main_driver.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/application.dir/main_driver.cpp.s"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "D:\data\drive\College\Forth Year\Fall Semester\Computer Graphics and Multimedia\Midterm\question6-code\main_driver.cpp" -o CMakeFiles\application.dir\main_driver.cpp.s

# Object files for target application
application_OBJECTS = \
"CMakeFiles/application.dir/main_driver.cpp.obj"

# External object files for target application
application_EXTERNAL_OBJECTS =

application.exe: CMakeFiles/application.dir/main_driver.cpp.obj
application.exe: CMakeFiles/application.dir/build.make
application.exe: CMakeFiles/application.dir/linklibs.rsp
application.exe: CMakeFiles/application.dir/objects1.rsp
application.exe: CMakeFiles/application.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="D:\data\drive\College\Forth Year\Fall Semester\Computer Graphics and Multimedia\Midterm\question6-code\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable application.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\application.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/application.dir/build: application.exe
.PHONY : CMakeFiles/application.dir/build

CMakeFiles/application.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\application.dir\cmake_clean.cmake
.PHONY : CMakeFiles/application.dir/clean

CMakeFiles/application.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" "D:\data\drive\College\Forth Year\Fall Semester\Computer Graphics and Multimedia\Midterm\question6-code" "D:\data\drive\College\Forth Year\Fall Semester\Computer Graphics and Multimedia\Midterm\question6-code" "D:\data\drive\College\Forth Year\Fall Semester\Computer Graphics and Multimedia\Midterm\question6-code\cmake-build-debug" "D:\data\drive\College\Forth Year\Fall Semester\Computer Graphics and Multimedia\Midterm\question6-code\cmake-build-debug" "D:\data\drive\College\Forth Year\Fall Semester\Computer Graphics and Multimedia\Midterm\question6-code\cmake-build-debug\CMakeFiles\application.dir\DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/application.dir/depend
