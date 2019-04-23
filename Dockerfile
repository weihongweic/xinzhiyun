FROM docker.oa.com:8080/public/golang:latest
ADD ./beegotest $GOPATH/src/beegotest
ADD ./git* $GOPATH/src/github.com
RUN mkdir -p /data/log/
ADD run.sh /run.sh
RUN chmod +x /run.sh
EXPOSE 9090
WORKDIR $GOPATH/src/beegotest
CMD ["/run.sh"]
