FROM docker.oa.com:8080/public/golang:latest
ADD beegotest $GOPATH/src
RUN mkdir -p /data/log/
RUN cd $GOPATH/src/beegotest
RUN go build -O mytest
EXPOSE 9090
WORKDIR $GOPATH/src
CMD ["./mytest"]
