cmake_minimum_required(VERSION 3.10)
project(project LANGUAGES CXX)

#------Configures------#
# Clang configure
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

# if Debug (uncomment 2 lines)
# set(CMAKE_BULD_TYPE Debug)
# set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -O0 -g")

#------Code settings------#
# Add include directory
add_library(MyLibrary SHARED
  ${PROJECT_SOURCE_DIR}/src/my_library1.cpp
  ${PROJECT_SOURCE_DIR}/src/my_library2.cpp
)

target_include_directories(MyLibrary
  PUBLIC
  ${CMAKE_CURRENT_SOURCE_DIR}/include    # Public Header directories
  # PRIVATE
  #   ${CMAKE_CURRENT_SOURCE_DIR}/include   # Only Internal Header directories
)

# Create excutable
add_executable(program src/main.cpp)

# Link libraries if needed
target_link_libraries(program MyLibrary)

#

