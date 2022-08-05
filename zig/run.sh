#!/bin/sh
zig build-exe prime.zig
echo -n "Zig - Debug"
time ./prime > /dev/null
echo ""
