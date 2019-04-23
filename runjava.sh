#!/bin/bash

cd $GOPATH/src/OpenUrl/src/pyrmont/

mkdir -p /data/log/
javac *.java

cd $GOPATH/src/OpenUrl/
jar cvfm  pyrmont.jar mymanifest -C src/ .

java -jar pyrmont.jar
