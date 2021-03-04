# This Makefile is meant to be used by people that do not usually work
# with Go source code. If you know what GOPATH is then you probably
# don't need to bother with make.

.PHONY: all test clean

GOBIN = build/bin

all:
	./build/test.sh go get -v ./...

test: all
	./build/test.sh go test -v ./...

clean:
	rm -fr build/_workspace/pkg/ $(GOBIN)/*
