#!/bin/bash
echo -n "# Rust - Debug"
rustc prime.rs 
time ./prime > /dev/null
echo ""
echo -n "# Rust - Optimized"
rustc prime.rs -O
time ./prime > /dev/null
echo ""
