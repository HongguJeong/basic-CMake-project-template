#include "header.hpp"
#include <iostream>

void hello_function() { std::cout << "Hello from the function!" << std::endl; }

int main() {
  std::cout << "Hello, CMake!" << std::endl;
  hello_function();
  return 0;
}
