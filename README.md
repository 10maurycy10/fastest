# What is the fastest language?

This has been a highly debated language for a long time.
This is an attempt to objectively find the fastest (and slowest language).

## Methods

To get meaningful results, a standard task/benchmark is needed.

I have chosen to use the [Sieve of Eratosthenes](https://en.wikipedia.org/wiki/Sieve_of_Eratosthenes) to find all primes from 2 to 10,000,000 and print the primes to standard output.

### Algorithm example

```python
prime_max = 10000000
# Initialize the working array
array = [True for i in range(prime_max)]
# Set 0 and 1 to not prime
array[0] = False
array[1] = False
# For all numbers to prime max
for prime in range(prime_max):
    # If it is prime
    if array[prime]:
        print(prime)
        for multiple in range(prime, prime_max, prime):
            array[multiple] = False
```

## Languages supported:

- JavaScript (Node)
- Python
- C (-O0 and -O1)
- Zig
- Rust
- Java

## Running 

run ``./run.sh`` in the root of the project.
