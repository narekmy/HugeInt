#include "hugeInt.h"

#define MINUS 45
#define ORDER 10

void HugeInt::digitToVector(std::string str) {
  if (str.empty())
    std::cerr << "Empty string is not allowed" << std::endl;
  for (auto &ch : str) {
    if (isdigit(ch)) {
      lhs.push_back(ch - '0');
    }
  }
}

void HugeInt::digitToVector(int digit) {
  digit = abs(digit);
  while (digit != 0) {
    lhs.push_back(digit % ORDER);
    digit /= ORDER;
  }
  std::reverse(lhs.begin(), lhs.end());
}

HugeInt::HugeInt(std::string value) {
  digitToVector(value);
  setSign(value);
}

HugeInt::HugeInt(int value) {
  digitToVector(value);
  setSign(value);
}

void HugeInt::setSign(int value) {
  if (value < 0) {
    num_sign = true;
  }
}

void HugeInt::setSign(bool neg) { num_sign = neg; }

void HugeInt::setSign(std::string value) {
  if (value[0] == MINUS) {
    num_sign = true;
  }
}

bool HugeInt::isNegative() const { return num_sign; }

const std::vector<int16_t> &HugeInt::getVector() const { return lhs; }

std::vector<int16_t>
HugeInt::sumHugeInts(const std::vector<int16_t> &lhs, const std::vector<int16_t> &rhs) const {
  int16_t carry = 0;
  std::vector<int16_t> l = lhs;
  std::vector<int16_t> r = rhs;

  if (l.size() > r.size()) {
    r.insert(r.begin(), l.size() - r.size(), 0);
  } else {
    l.insert(l.begin(), r.size() - l.size(), 0);
  }

  std::vector<int16_t> result(l.size());
  for (int i = l.size() - 1; i >= 0; --i) {
    result[i] = (l[i] + r[i]) % ORDER + carry;
    carry = (l[i] + r[i]) / ORDER;
  }

  if (carry) {
    result.insert(result.begin(), carry);
  }
  return result;
}

bool operator>=(const std::vector<int16_t> &lhs,
                const std::vector<int16_t> &rhs) {
  if (lhs.size() > rhs.size()) {
    return true;
  } else {
    return false;
  }
  int  max_size = lhs.size() >= rhs.size() ? lhs.size() : rhs.size();
  for (int i = 0; i < max_size; ++i) {
    if (lhs[i] > rhs[i]) {
      return true;
    } else if (lhs[i] < rhs[i]) {
      return false;
    }
  }
  return true;
}

std::vector<int16_t>
HugeInt::subHugeInts(const std::vector<int16_t> &rhs) const {
  std::vector<int16_t> large, small;
  if (lhs >= rhs) {
    large = lhs;
    small = rhs;
  } else {
    large = rhs;
    small = lhs;
  }
  small.insert(small.begin(), large.size() - small.size(), 0);
  std::vector<int16_t> result(large.size());
  int16_t carry = 0;

  for (int i = large.size(); i >= 0; --i) {
    if (large[i] >= small[i]) {
      result[i] = large[i] - small[i] + carry;
      carry = 0;
    } else {
      carry = -1;
      result[i] = large[i] - small[i] + carry + ORDER;
    }
  }

  while (!result[0]) {
    result.erase(result.begin());
  }
  return result;
}

void HugeInt::setVector(const std::vector<int16_t> &rhs) {
  lhs.assign(rhs.begin(), rhs.end());
}

std::vector<int16_t> HugeInt::multipHugeInts(const std::vector<int16_t> &lhs, const std::vector<int16_t> &rhs) const {
      std::vector<int16_t> large, small;
      if (lhs >= rhs) {
          large = lhs;
          small = rhs;
      } else {
          large = rhs;
          small = lhs;
      }

      int16_t carry = 0;
      std::vector<int16_t> result{0};
      int trailing_zeros = 0;
      for(int i = small.size() - 1; i >= 0; --i) {
          std::vector<int16_t> temp (large.size());
          for(int j = large.size() - 1; j >= 0; --j) {
              temp[j] = (small[i] * large[j]) % ORDER + carry;
              carry = (small[i] * large[j]) / ORDER;
          }
          if(carry > 0) temp.insert(temp.begin(), carry); 
          if (trailing_zeros > 0) temp.insert(temp.end(), trailing_zeros, 0);
          result = sumHugeInts(result, temp);
          ++trailing_zeros;
      }
      return result;
  }

HugeInt HugeInt::operator+(const HugeInt &arg) const {
  HugeInt huge;
  if (isNegative() && arg.isNegative()) {
  huge.setVector(sumHugeInts(lhs, arg.getVector()));
    huge.setSign(true);
    return huge;
  }
  if (isNegative() || arg.isNegative()) {
    if (!isNegative() && lhs >= arg.getVector()) {
      huge.setVector(subHugeInts(arg.getVector()));
      huge.setSign();
      return huge;
    } else {
      huge.setVector(subHugeInts(arg.getVector()));
      huge.setSign(true);
      return huge;
    }
  }
  huge.setVector(sumHugeInts(lhs, arg.getVector()));
  huge.setSign();
  return huge;
}

HugeInt HugeInt::operator*(const HugeInt &arg) const {
  HugeInt huge;
  huge.setVector(multipHugeInts(lhs, arg.getVector()));
  if (isNegative() || arg.isNegative()) {
        huge.setSign(true);
  }
  return huge;
}

std::ostream &operator<<(std::ostream &os, const HugeInt &huge) {
  if (huge.num_sign) {
    os << '-';
  }
  for (uint16_t num : huge.lhs) {
    os << num;
  }
  return os;
}
