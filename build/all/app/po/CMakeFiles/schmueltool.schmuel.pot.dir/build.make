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

# Utility rule file for schmueltool.schmuel.pot.

# Include the progress variables for this target.
include po/CMakeFiles/schmueltool.schmuel.pot.dir/progress.make

po/CMakeFiles/schmueltool.schmuel.pot:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/schmuel/schmueltool/SchmuelTool/build/all/app/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating translation template"
	cd /home/schmuel/schmueltool/SchmuelTool/build/all/app/po && /usr/bin/intltool-extract --update --type=gettext/ini --srcdir=/home/schmuel/schmueltool/SchmuelTool schmueltool.desktop.in
	cd /home/schmuel/schmueltool/SchmuelTool/build/all/app/po && /usr/bin/xgettext -o schmueltool.schmuel.pot -D /home/schmuel/schmueltool/SchmuelTool/po -D /home/schmuel/schmueltool/SchmuelTool/build/all/app/po --from-code=UTF-8 --c++ --qt --language=javascript --add-comments=TRANSLATORS --keyword=tr --keyword=tr:1,2 --keyword=ctr:1c,2 --keyword=dctr:2c,3 --keyword=N_ --keyword=_ --keyword=dtr:2 --keyword=dtr:2,3 --keyword=tag --keyword=tag:1c,2 --package-name='schmueltool.schmuel' --sort-by-file ../qml/Main.qml schmueltool.desktop.in.h
	cd /home/schmuel/schmueltool/SchmuelTool/build/all/app/po && /usr/bin/cmake -E copy schmueltool.schmuel.pot /home/schmuel/schmueltool/SchmuelTool/po

schmueltool.schmuel.pot: po/CMakeFiles/schmueltool.schmuel.pot
schmueltool.schmuel.pot: po/CMakeFiles/schmueltool.schmuel.pot.dir/build.make

.PHONY : schmueltool.schmuel.pot

# Rule to build all files generated by this target.
po/CMakeFiles/schmueltool.schmuel.pot.dir/build: schmueltool.schmuel.pot

.PHONY : po/CMakeFiles/schmueltool.schmuel.pot.dir/build

po/CMakeFiles/schmueltool.schmuel.pot.dir/clean:
	cd /home/schmuel/schmueltool/SchmuelTool/build/all/app/po && $(CMAKE_COMMAND) -P CMakeFiles/schmueltool.schmuel.pot.dir/cmake_clean.cmake
.PHONY : po/CMakeFiles/schmueltool.schmuel.pot.dir/clean

po/CMakeFiles/schmueltool.schmuel.pot.dir/depend:
	cd /home/schmuel/schmueltool/SchmuelTool/build/all/app && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/schmuel/schmueltool/SchmuelTool /home/schmuel/schmueltool/SchmuelTool/po /home/schmuel/schmueltool/SchmuelTool/build/all/app /home/schmuel/schmueltool/SchmuelTool/build/all/app/po /home/schmuel/schmueltool/SchmuelTool/build/all/app/po/CMakeFiles/schmueltool.schmuel.pot.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : po/CMakeFiles/schmueltool.schmuel.pot.dir/depend

