# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.30

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
CMAKE_COMMAND = D:\cmake\bin\cmake.exe

# The command to remove a file.
RM = D:\cmake\bin\cmake.exe -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "D:\c project\cmake_practice\total_project"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "D:\c project\cmake_practice\total_project\build"

# Include any dependencies generated for this target.
include CMakeFiles/Animal.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/Animal.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/Animal.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Animal.dir/flags.make

CMakeFiles/Animal.dir/main.cpp.obj: CMakeFiles/Animal.dir/flags.make
CMakeFiles/Animal.dir/main.cpp.obj: CMakeFiles/Animal.dir/includes_CXX.rsp
CMakeFiles/Animal.dir/main.cpp.obj: D:/c\ project/cmake_practice/total_project/main.cpp
CMakeFiles/Animal.dir/main.cpp.obj: CMakeFiles/Animal.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="D:\c project\cmake_practice\total_project\build\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Animal.dir/main.cpp.obj"
	C:\mingw64\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Animal.dir/main.cpp.obj -MF CMakeFiles\Animal.dir\main.cpp.obj.d -o CMakeFiles\Animal.dir\main.cpp.obj -c "D:\c project\cmake_practice\total_project\main.cpp"

CMakeFiles/Animal.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Animal.dir/main.cpp.i"
	C:\mingw64\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "D:\c project\cmake_practice\total_project\main.cpp" > CMakeFiles\Animal.dir\main.cpp.i

CMakeFiles/Animal.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Animal.dir/main.cpp.s"
	C:\mingw64\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "D:\c project\cmake_practice\total_project\main.cpp" -o CMakeFiles\Animal.dir\main.cpp.s

# Object files for target Animal
Animal_OBJECTS = \
"CMakeFiles/Animal.dir/main.cpp.obj"

# External object files for target Animal
Animal_EXTERNAL_OBJECTS =

Animal.exe: CMakeFiles/Animal.dir/main.cpp.obj
Animal.exe: CMakeFiles/Animal.dir/build.make
Animal.exe: animal/libAnimalLib.a
Animal.exe: CMakeFiles/Animal.dir/linkLibs.rsp
Animal.exe: CMakeFiles/Animal.dir/objects1.rsp
Animal.exe: CMakeFiles/Animal.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir="D:\c project\cmake_practice\total_project\build\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Animal.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\Animal.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Animal.dir/build: Animal.exe
.PHONY : CMakeFiles/Animal.dir/build

CMakeFiles/Animal.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\Animal.dir\cmake_clean.cmake
.PHONY : CMakeFiles/Animal.dir/clean

CMakeFiles/Animal.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" "D:\c project\cmake_practice\total_project" "D:\c project\cmake_practice\total_project" "D:\c project\cmake_practice\total_project\build" "D:\c project\cmake_practice\total_project\build" "D:\c project\cmake_practice\total_project\build\CMakeFiles\Animal.dir\DependInfo.cmake" "--color=$(COLOR)"
.PHONY : CMakeFiles/Animal.dir/depend

