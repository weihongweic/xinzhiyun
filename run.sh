#!/bin/bash

cd $GOPATH/src/beegotest

mkdir -p /data/log/

go build  -o mytest

pwd 

ls

./mytest
