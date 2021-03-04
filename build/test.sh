#!/bin/bash

set -e
workspace="$PWD/build/_workspace"
root="$PWD"
ethdir="$workspace/src/github.com/pr0sessor"
if [ ! -L "$ethdir/nicehash-pool" ]; then
	mkdir -p "$ethdir"
	cd "$ethdir"
	ln -s ../../../../../. nicehash-pool
	cd "$root"
fi

GOPATH="$workspace"
GOBIN="$PWD/build/bin"
export GOPATH GOBIN

cd "$ethdir/nicehash-pool"
PWD="$ethdir/nicehash-pool"
exec "$@"
