const std = @import("std");

pub fn main() void {
    const result = blk: {
        var total: u32 = 0;
        var i: u32 = 109165;
        outer: while (i <= 576723) : (i += 1) {
            const digits = [_]u8{
                @truncate(u8, i % 1000000 / 100000),
                @truncate(u8, i % 100000 / 10000),
                @truncate(u8, i % 10000 / 1000),
                @truncate(u8, i % 1000 / 100),
                @truncate(u8, i % 100 / 10),
                @truncate(u8, i % 10 / 1),
            };
            var d: u8 = 1;
            var double_int: bool = false;
            while (d < 6) : (d += 1) {
                if (digits[d] < digits[d - 1]) { continue :outer; }
                if (digits[d] == digits[d - 1]) {
                    double_int = true;
                }
            }
            if (double_int) {
                total += 1;
            }
        }
        break :blk total;
    };
    std.debug.warn("{}\n", result);
}
