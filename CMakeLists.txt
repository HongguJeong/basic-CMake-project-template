cmake_minimum_required(VERSION 3.10)
project(project LANGUAGES CXX)

#------Configures------#
# Clang configure ( uncomment only root CMakeLists.txt )
# set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

# if Debug (uncomment 2 lines)
# set(CMAKE_BULD_TYPE Debug)
# set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -O0 -g")

#------External libraries------#
## Option1: Using find_package
# [Normal]
# find_package(Boost REQUIRED)
# if (!Boost_FOUND)
#   message(FATAL_ERROR "Boost libraries not found.")
# endif()
# target_link_libraries(program PUBLIC Boost)

# [Component]
# find_package(Boost REQUIRED COMPONENTS ComponentA ComponentB )
# if (!Boost_FOUND)
#   message(FATAL_ERROR "Boost libraries not found.")
# endif()
# target_link_libraries(program PUBLIC Boost::ComponentA, Boost::ComponentB)

# [Version]
# find_package(Boost 1.2.3 REQUIRED ) # minimum 1.2.3
# find_package(Boost 1.2.3 EXACT REQUIRED) # exact 1.2.3
# if (!Boost_FOUND)
#   message(FATAL_ERROR "Boost libraries not found.")
# endif()
# target_link_libraries(program PUBLIC Boost)


# Option2: Using pkg-config ( Imported Target )
# find_package(PkgConfig REQUIRED)

# [Normal]
# pkg_check_modules(SDL2 REQUIRED IMPORTED_TARGET sdl2)
# if (!SDL2_FOUND)
#   message(FATAL_ERROR "SDL2 libraries not found.")
# endif()
# target_link_libraries(program PUBLIC PkgConfig::SDL2)

# [Version]
# pkg_check_modules(SDL2 REQUIRED IMPORTED_TARGET sdl2>=2.0)
# if (!SDL2_FOUND)
#   message(FATAL_ERROR "SDL2 libraries not found.")
# endif()
# target_link_libraries(program PUBLIC PkgConfig::SDL2)


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

