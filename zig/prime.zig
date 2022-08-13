const std = @import("std");
const stdout = std.io.getStdOut().writer();
const ArrayList = std.ArrayList;

pub fn main() !void {
    try sieve(10000000);
}
 
fn sieve(limit: usize) !void {
    var gpa = std.heap.GeneralPurposeAllocator(.{}){};
    const allocator = gpa.allocator();
    var list = ArrayList(bool).init(allocator);
    defer list.deinit();
    try list.resize(limit);
    var primes = list.items;
    // Fill with ones
    var i: usize = 0;
    while (i < limit) : (i += 1) {
        primes[i] = true;
    }

    // Start at 2 so initalizing 0 and 1 to false can be skiped
    var prime: usize = 2;
    // For all numbers...
    while (prime < limit) : (prime += 1) {
        if (primes[prime]) {
            // If it is a prime, print it.
            try stdout.print("{}\n", .{prime});
            // Remove multiples from prime table
            var mul = prime;
            while (mul < limit) : (mul += prime)
                primes[mul] = false;
        }
    }
}
