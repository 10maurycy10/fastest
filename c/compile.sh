#!/bin/bash
clang prime.c -O2 -o prime_o2 --static
clang prime.c -Os -o prime_os --static
clang prime.c -o prime_o0 --static
