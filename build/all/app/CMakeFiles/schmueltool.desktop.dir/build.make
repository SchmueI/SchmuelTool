# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_SOURCE_DIR = /home/schmuel/schmueltool/SchmuelTool

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/schmuel/schmueltool/SchmuelTool/build/all/app

# Utility rule file for schmueltool.desktop.

# Include the progress variables for this target.
include CMakeFiles/schmueltool.desktop.dir/progress.make

CMakeFiles/schmueltool.desktop:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/schmuel/schmueltool/SchmuelTool/build/all/app/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Merging translations into schmueltool.desktop..."
	LC_ALL=C /usr/bin/intltool-merge -d -u /home/schmuel/schmueltool/SchmuelTool/po /home/schmuel/schmueltool/SchmuelTool/schmueltool.desktop.in schmueltool.desktop
	sed -i 's/schmueltool-//g' /home/schmuel/schmueltool/SchmuelTool/build/all/app/schmueltool.desktop

schmueltool.desktop: CMakeFiles/schmueltool.desktop
schmueltool.desktop: CMakeFiles/schmueltool.desktop.dir/build.make

.PHONY : schmueltool.desktop

# Rule to build all files generated by this target.
CMakeFiles/schmueltool.desktop.dir/build: schmueltool.desktop

.PHONY : CMakeFiles/schmueltool.desktop.dir/build

CMakeFiles/schmueltool.desktop.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/schmueltool.desktop.dir/cmake_clean.cmake
.PHONY : CMakeFiles/schmueltool.desktop.dir/clean

CMakeFiles/schmueltool.desktop.dir/depend:
	cd /home/schmuel/schmueltool/SchmuelTool/build/all/app && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/schmuel/schmueltool/SchmuelTool /home/schmuel/schmueltool/SchmuelTool /home/schmuel/schmueltool/SchmuelTool/build/all/app /home/schmuel/schmueltool/SchmuelTool/build/all/app /home/schmuel/schmueltool/SchmuelTool/build/all/app/CMakeFiles/schmueltool.desktop.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/schmueltool.desktop.dir/depend

