#include <iostream>
#include <string>

#include "lib.hpp"
#include "include/libraryproject/libraryproject.hpp"

auto main(int argc, char *argv[]) -> int
{
  auto const lib = library {};
  auto const message = "Hello from " + lib.name + "!";
  std::cout << message << '\n';
  printk();
  main_function(argc, argv);
  matrix_multiply();
  return 0;
}
