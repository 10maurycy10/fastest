class SieveOfEratosthenes {
	void sieveOfEratosthenes(int limit) {
		boolean primes[] = new boolean[limit];
		for (int i = 0; i < limit; i ++)
			primes[i] = true;
		primes[0] = false;
		primes[1] = false;
		for (int prime = 0; prime < limit; prime ++) {
			if (primes[prime]) {
				System.out.print(prime + "\n");
				for (int mult = prime; mult < limit; mult += prime) {
					primes[mult] = false;
				}
			}
		}
	}
	public static void main(String[] args) {
		SieveOfEratosthenes s = new SieveOfEratosthenes(); 
		s.sieveOfEratosthenes(10000000);
	}
}
