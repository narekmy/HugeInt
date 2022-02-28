#include "hugeInt.h"

int main() {
  HugeInt lhs("385348593457483953948534573945739844853491");
  HugeInt rhs(2);
  HugeInt sum = lhs + rhs;
  HugeInt mul = lhs * rhs;
  std::cout << "lhs = " << lhs << std::endl;
  std::cout << "rhs = " << rhs << std::endl;
  std::cout << "lhs + rhs = " << sum << std::endl;
  std::cout << "lhs * rhs = " << mul << std::endl;
}
