#!/bin/bash

set -e -u -x

export GOPATH=$(pwd)/go
export PATH=$PATH:$GOPATH/bin
dist=$(pwd)/dist
go get -u github.com/Masterminds/glide
cd $(pwd)/go/src/github.com/shumkovdenis/exapp
glide install
echo $dist
go build -o $dist/exapp
