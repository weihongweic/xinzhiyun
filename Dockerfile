FROM docker.oa.com:8080/public/golang:latest
ADD beegotest $GOPATH/src
RUN mkdir -p /data/log/
RUN go build  $GOPATH/src/beegotest/mytest
RUN cp mytest $GOPATH/src/
EXPOSE 9090
WORKDIR $GOPATH/src
CMD ["./mytest"]
