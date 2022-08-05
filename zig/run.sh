#!/bin/sh
zig build-exe prime.zig
echo -n "# Zig - Debug"
time ./prime > /dev/null
echo ""
zig build-exe prime.zig -O ReleaseFast
echo -n "# Zig - ReleaseFast"
time ./prime > /dev/null
echo ""
