#include "lib.hpp"

auto main() -> int
{
  auto const lib = library {};

  return lib.name == "programproject" ? 0 : 1;
}
