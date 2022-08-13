package main

func main() {
	Primes(10000000)
}

func Primes(count int) {
	integers := make([]bool, count+1)
	for i := 2; i < count+1; i++ {
		integers[i] = true
	}
	for j := 2; j*j <= count; j++ {
		if integers[j] {
			for i := j * 2; i <= count; i += j {
				integers[i] = false
			}
		}
	}
	for i := 2; i <= count; i++ {
		if integers[i] {
			println(i)
		}
	}
}
