#!/bin/sh
./compile.sh
echo -n "C - O0"
time ./prime_o0 > /dev/null
echo ""
echo -n "C - 02"
time ./prime_o2 > /dev/null
echo ""
