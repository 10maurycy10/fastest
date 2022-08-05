prime_max = 10000000
# Initalize the working array
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
        
