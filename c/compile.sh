#!/bin/bash
gcc prime.c -O2 -o prime_o2 --static
gcc prime.c -Os -o prime_os --static
gcc prime.c -o prime_o0 --static