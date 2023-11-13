#include <iostream>
#include <string>

#include "lib.hpp"
#include "include/libraryproject/libraryproject.hpp"

auto main() -> int
{
  auto const lib = library {};
  auto const message = "Hello from " + lib.name + "!";
  std::cout << message << '\n';
  printk();
  return 0;
}
