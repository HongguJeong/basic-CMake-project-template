Here's how to structure a basic Unix C++ program using CMake:
Project Structure

코드

my_project/  
├── include/  
│   └── my_header.h  
├── src/  
│   └── main.cpp  
└── CMakeLists.txt  
CMakeLists.txt

This file defines the build process.

### CMakeList 코드 샘플
```
cmake_minimum_required(VERSION 3.10)
project(MyProject LANGUAGES CXX)

# Add include directory
include_directories(include)

# Create executable
add_executable(my_program src/main.cpp)

# Link libraries if needed
# target_link_libraries(my_program my_library)
```


### C++ Code Example
```C++
// include/my_header.h
#ifndef MY_HEADER_H
#define MY_HEADER_H

void hello_function();

#endif
```

```C++

// src/main.cpp
#include <iostream>
#include "my_header.h"

void hello_function() {
    std::cout << "Hello from the function!" << std::endl;
}

int main() {
    std::cout << "Hello, CMake!" << std::endl;
    hello_function();
    return 0;
}
```

#### Build Instructions
```bash
# Create build directory.  
$ mkdir build && cd build

# Generate build files.  
$ cmake ..

# compile.
$ make

# run.
$ ./my_program
