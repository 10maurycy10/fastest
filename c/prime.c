#include <stdio.h>

#define PRIME_MAX 10000000

int array[PRIME_MAX];

int main() {
	// fill array with 1s
	for (int i = 0; i < PRIME_MAX; i++) {
		array[i] = 1;
	}
	// remove zero and one from prime array
	array[0] = 0;
	array[1] = 0;
	// For all numbers to prime_max
	for (int n = 0; n < PRIME_MAX; n++) {
		// If the number is a prime
		if (array[n]) {
			// Print it.
			printf("%d ", n);
			// Mark multiples as not prime
			for (int i = n; i < PRIME_MAX; i += n) {
				array[i] = 0;
			}
		}
	}
}
