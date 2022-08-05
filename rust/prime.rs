fn main() {
    const LIMIT: usize = 10000000;
    let mut primes = vec![true; LIMIT];
    primes[0] = false;
    primes[1] = false;
    for prime in 0..LIMIT {
        if primes[prime] {
            println!("{}", prime);
            let mut mul = prime*2;
            while mul < LIMIT {
                primes[mul] = false;
                mul += prime;
            }
        }
    }
}
