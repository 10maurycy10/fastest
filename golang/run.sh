#!/bin/sh
echo '# Go'
go build -o primes main.go
chmod +x primes
time ./primes
