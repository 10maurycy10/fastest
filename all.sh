#!/bin/bash
run() {
	pushd $1 > /dev/null
	chmod a+x run.sh
	./run.sh || exit 1
	popd > /dev/null
}

run "asm"
run "awk"
run "golang"
run "javascript"
run "java"
run "python"
run "zig"
run "c"
run "rust"
