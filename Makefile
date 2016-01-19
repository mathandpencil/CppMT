# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.1

# Default target executed when no arguments are given to make.
default_target: all
.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:
.PHONY : .NOTPARALLEL

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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.1.1_1/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.1.1_1/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/josephmisiti/mathandpencil/projects/open-source-contributions/CppMT

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/josephmisiti/mathandpencil/projects/open-source-contributions/CppMT

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake cache editor..."
	/usr/local/Cellar/cmake/3.1.1_1/bin/ccmake -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache
.PHONY : edit_cache/fast

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/usr/local/Cellar/cmake/3.1.1_1/bin/cmake -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache
.PHONY : rebuild_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /Users/josephmisiti/mathandpencil/projects/open-source-contributions/CppMT/CMakeFiles /Users/josephmisiti/mathandpencil/projects/open-source-contributions/CppMT/CMakeFiles/progress.marks
	$(MAKE) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /Users/josephmisiti/mathandpencil/projects/open-source-contributions/CppMT/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean
.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named cmt

# Build rule for target.
cmt: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 cmt
.PHONY : cmt

# fast build rule for target.
cmt/fast:
	$(MAKE) -f CMakeFiles/cmt.dir/build.make CMakeFiles/cmt.dir/build
.PHONY : cmt/fast

CMT.o: CMT.cpp.o
.PHONY : CMT.o

# target to build an object file
CMT.cpp.o:
	$(MAKE) -f CMakeFiles/cmt.dir/build.make CMakeFiles/cmt.dir/CMT.cpp.o
.PHONY : CMT.cpp.o

CMT.i: CMT.cpp.i
.PHONY : CMT.i

# target to preprocess a source file
CMT.cpp.i:
	$(MAKE) -f CMakeFiles/cmt.dir/build.make CMakeFiles/cmt.dir/CMT.cpp.i
.PHONY : CMT.cpp.i

CMT.s: CMT.cpp.s
.PHONY : CMT.s

# target to generate assembly for a file
CMT.cpp.s:
	$(MAKE) -f CMakeFiles/cmt.dir/build.make CMakeFiles/cmt.dir/CMT.cpp.s
.PHONY : CMT.cpp.s

Consensus.o: Consensus.cpp.o
.PHONY : Consensus.o

# target to build an object file
Consensus.cpp.o:
	$(MAKE) -f CMakeFiles/cmt.dir/build.make CMakeFiles/cmt.dir/Consensus.cpp.o
.PHONY : Consensus.cpp.o

Consensus.i: Consensus.cpp.i
.PHONY : Consensus.i

# target to preprocess a source file
Consensus.cpp.i:
	$(MAKE) -f CMakeFiles/cmt.dir/build.make CMakeFiles/cmt.dir/Consensus.cpp.i
.PHONY : Consensus.cpp.i

Consensus.s: Consensus.cpp.s
.PHONY : Consensus.s

# target to generate assembly for a file
Consensus.cpp.s:
	$(MAKE) -f CMakeFiles/cmt.dir/build.make CMakeFiles/cmt.dir/Consensus.cpp.s
.PHONY : Consensus.cpp.s

Fusion.o: Fusion.cpp.o
.PHONY : Fusion.o

# target to build an object file
Fusion.cpp.o:
	$(MAKE) -f CMakeFiles/cmt.dir/build.make CMakeFiles/cmt.dir/Fusion.cpp.o
.PHONY : Fusion.cpp.o

Fusion.i: Fusion.cpp.i
.PHONY : Fusion.i

# target to preprocess a source file
Fusion.cpp.i:
	$(MAKE) -f CMakeFiles/cmt.dir/build.make CMakeFiles/cmt.dir/Fusion.cpp.i
.PHONY : Fusion.cpp.i

Fusion.s: Fusion.cpp.s
.PHONY : Fusion.s

# target to generate assembly for a file
Fusion.cpp.s:
	$(MAKE) -f CMakeFiles/cmt.dir/build.make CMakeFiles/cmt.dir/Fusion.cpp.s
.PHONY : Fusion.cpp.s

Matcher.o: Matcher.cpp.o
.PHONY : Matcher.o

# target to build an object file
Matcher.cpp.o:
	$(MAKE) -f CMakeFiles/cmt.dir/build.make CMakeFiles/cmt.dir/Matcher.cpp.o
.PHONY : Matcher.cpp.o

Matcher.i: Matcher.cpp.i
.PHONY : Matcher.i

# target to preprocess a source file
Matcher.cpp.i:
	$(MAKE) -f CMakeFiles/cmt.dir/build.make CMakeFiles/cmt.dir/Matcher.cpp.i
.PHONY : Matcher.cpp.i

Matcher.s: Matcher.cpp.s
.PHONY : Matcher.s

# target to generate assembly for a file
Matcher.cpp.s:
	$(MAKE) -f CMakeFiles/cmt.dir/build.make CMakeFiles/cmt.dir/Matcher.cpp.s
.PHONY : Matcher.cpp.s

Tracker.o: Tracker.cpp.o
.PHONY : Tracker.o

# target to build an object file
Tracker.cpp.o:
	$(MAKE) -f CMakeFiles/cmt.dir/build.make CMakeFiles/cmt.dir/Tracker.cpp.o
.PHONY : Tracker.cpp.o

Tracker.i: Tracker.cpp.i
.PHONY : Tracker.i

# target to preprocess a source file
Tracker.cpp.i:
	$(MAKE) -f CMakeFiles/cmt.dir/build.make CMakeFiles/cmt.dir/Tracker.cpp.i
.PHONY : Tracker.cpp.i

Tracker.s: Tracker.cpp.s
.PHONY : Tracker.s

# target to generate assembly for a file
Tracker.cpp.s:
	$(MAKE) -f CMakeFiles/cmt.dir/build.make CMakeFiles/cmt.dir/Tracker.cpp.s
.PHONY : Tracker.cpp.s

common.o: common.cpp.o
.PHONY : common.o

# target to build an object file
common.cpp.o:
	$(MAKE) -f CMakeFiles/cmt.dir/build.make CMakeFiles/cmt.dir/common.cpp.o
.PHONY : common.cpp.o

common.i: common.cpp.i
.PHONY : common.i

# target to preprocess a source file
common.cpp.i:
	$(MAKE) -f CMakeFiles/cmt.dir/build.make CMakeFiles/cmt.dir/common.cpp.i
.PHONY : common.cpp.i

common.s: common.cpp.s
.PHONY : common.s

# target to generate assembly for a file
common.cpp.s:
	$(MAKE) -f CMakeFiles/cmt.dir/build.make CMakeFiles/cmt.dir/common.cpp.s
.PHONY : common.cpp.s

fastcluster/fastcluster.o: fastcluster/fastcluster.cpp.o
.PHONY : fastcluster/fastcluster.o

# target to build an object file
fastcluster/fastcluster.cpp.o:
	$(MAKE) -f CMakeFiles/cmt.dir/build.make CMakeFiles/cmt.dir/fastcluster/fastcluster.cpp.o
.PHONY : fastcluster/fastcluster.cpp.o

fastcluster/fastcluster.i: fastcluster/fastcluster.cpp.i
.PHONY : fastcluster/fastcluster.i

# target to preprocess a source file
fastcluster/fastcluster.cpp.i:
	$(MAKE) -f CMakeFiles/cmt.dir/build.make CMakeFiles/cmt.dir/fastcluster/fastcluster.cpp.i
.PHONY : fastcluster/fastcluster.cpp.i

fastcluster/fastcluster.s: fastcluster/fastcluster.cpp.s
.PHONY : fastcluster/fastcluster.s

# target to generate assembly for a file
fastcluster/fastcluster.cpp.s:
	$(MAKE) -f CMakeFiles/cmt.dir/build.make CMakeFiles/cmt.dir/fastcluster/fastcluster.cpp.s
.PHONY : fastcluster/fastcluster.cpp.s

gui.o: gui.cpp.o
.PHONY : gui.o

# target to build an object file
gui.cpp.o:
	$(MAKE) -f CMakeFiles/cmt.dir/build.make CMakeFiles/cmt.dir/gui.cpp.o
.PHONY : gui.cpp.o

gui.i: gui.cpp.i
.PHONY : gui.i

# target to preprocess a source file
gui.cpp.i:
	$(MAKE) -f CMakeFiles/cmt.dir/build.make CMakeFiles/cmt.dir/gui.cpp.i
.PHONY : gui.cpp.i

gui.s: gui.cpp.s
.PHONY : gui.s

# target to generate assembly for a file
gui.cpp.s:
	$(MAKE) -f CMakeFiles/cmt.dir/build.make CMakeFiles/cmt.dir/gui.cpp.s
.PHONY : gui.cpp.s

main.o: main.cpp.o
.PHONY : main.o

# target to build an object file
main.cpp.o:
	$(MAKE) -f CMakeFiles/cmt.dir/build.make CMakeFiles/cmt.dir/main.cpp.o
.PHONY : main.cpp.o

main.i: main.cpp.i
.PHONY : main.i

# target to preprocess a source file
main.cpp.i:
	$(MAKE) -f CMakeFiles/cmt.dir/build.make CMakeFiles/cmt.dir/main.cpp.i
.PHONY : main.cpp.i

main.s: main.cpp.s
.PHONY : main.s

# target to generate assembly for a file
main.cpp.s:
	$(MAKE) -f CMakeFiles/cmt.dir/build.make CMakeFiles/cmt.dir/main.cpp.s
.PHONY : main.cpp.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... edit_cache"
	@echo "... rebuild_cache"
	@echo "... cmt"
	@echo "... CMT.o"
	@echo "... CMT.i"
	@echo "... CMT.s"
	@echo "... Consensus.o"
	@echo "... Consensus.i"
	@echo "... Consensus.s"
	@echo "... Fusion.o"
	@echo "... Fusion.i"
	@echo "... Fusion.s"
	@echo "... Matcher.o"
	@echo "... Matcher.i"
	@echo "... Matcher.s"
	@echo "... Tracker.o"
	@echo "... Tracker.i"
	@echo "... Tracker.s"
	@echo "... common.o"
	@echo "... common.i"
	@echo "... common.s"
	@echo "... fastcluster/fastcluster.o"
	@echo "... fastcluster/fastcluster.i"
	@echo "... fastcluster/fastcluster.s"
	@echo "... gui.o"
	@echo "... gui.i"
	@echo "... gui.s"
	@echo "... main.o"
	@echo "... main.i"
	@echo "... main.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system

