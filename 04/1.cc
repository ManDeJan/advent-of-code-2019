#include <iostream>

int main() {
    int start = 109165, end = 576723, total = 0;
    for (int i = start; i <= end; i++) {
        int digits[6] = {
            i % 1000000 / 100000,
            i % 100000 / 10000,
            i % 10000 / 1000,
            i % 1000 / 100,
            i % 100 / 10,
            i % 10 / 1,
        };
        bool double_int = false, inreasing = true;
        for (int d = 1; d < 6; d++) {
            if (digits[d] < digits[d-1]) { inreasing = false; break; }
            if (digits[d] == digits[d-1]) double_int = true;
        }
        
        if (double_int && inreasing) {
            total++;
        }
    }
    std::cout << total << '\n';
}
