#!/bin/bash

cd $GOPATH/src/golang/beegotest

mkdir -p /data/log/

go build  -o mytest

./mytest
