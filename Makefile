#!/usr/bin/make -f

test:
	go test -timeout=1s -coverprofile=coverage.txt -covermode=atomic ./...

compile:
	go build ./...

build: test compile

lint:
	@golangci-lint run

.PHONY: test compile build lint
