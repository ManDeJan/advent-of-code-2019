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
        bool double_int = false, inreasing = true, in_range = true;
        for (int d = 1; d < 6; d++) {
            if (digits[d] < digits[d-1]) { inreasing = false; break; }
            if (digits[d] == digits[d - 1]) {
                double_int = true;
                if (in_range) {
                    if (!((d > 1     && digits[d - 2] == digits[d - 1]) ||
                          (d < 6 - 1 && digits[d + 1] == digits[d    ]))) {
                        in_range = false;
                    }
                }
            }
        }
        
        if (double_int && inreasing && !in_range) {
            total++;
        }
    }
    std::cout << total << '\n';
}
