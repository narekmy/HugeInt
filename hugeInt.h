#include <string>
#include <vector>
#include <iostream>
#include <algorithm>
#include <cctype> 

class HugeInt {

    public:
        HugeInt() = default;
        HugeInt(std::string value);
        HugeInt(int value);
        HugeInt operator + (const HugeInt & arg) const;
        HugeInt operator * (const HugeInt & arg) const;
        friend std::ostream &operator<<(std::ostream &os, const HugeInt &huge);
    private:
        void digitToVector(std::string str); 
        void digitToVector(int digit);
        void setSign(int value);
        void setSign(bool neg = false);
        void setSign(std::string value);
        bool isNegative() const; 
        const std::vector<int16_t> &getVector() const;
        std::vector<int16_t>
            sumHugeInts(const std::vector<int16_t> &lhs, const std::vector<int16_t> &rhs) const;
        std::vector<int16_t>
            subHugeInts(const std::vector<int16_t> &rhs) const;
        void setVector(const std::vector<int16_t> &rhs); 
        std::vector<int16_t> multipHugeInts(const std::vector<int16_t> &lhs, const std::vector<int16_t> &rhs) const; 

        std::vector<int16_t> lhs;
        uint16_t num_sign = false;

};
