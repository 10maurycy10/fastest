const std = @import("std");
const stdout = std.io.getStdOut().writer();
 
pub fn main() !void {
    try sieve(10000000);
}
 
fn sieve(comptime limit: usize) !void {
    // Initalize prime table. Uses compile time limit to avoid allocating
    var primes = [_]bool{true} ** limit;
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
