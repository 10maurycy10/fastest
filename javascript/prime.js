prime_max = 10000000

array = new Array(prime_max)

for (var i = 0; i < prime_max; i++)
	array[i] = true

function mark_prime(n) {
	for (var i = n; i < prime_max; i += n)
		array[i] = false
}

array[0] = false
array[1] = false

for (var i = 0; i < prime_max; i++) {
	if (array[i]) {
		console.log(i)
		mark_prime(i)
	}
}

