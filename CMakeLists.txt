cmake_minimum_required(VERSION 3.10)
project(project LANGUAGES CXX)

# Clang configure
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

# Add include directory
include_directories(include)

# Create excutable
add_executable(program src/main.cpp)

# Link libraries if needed
# target_link_libraries(program library)


