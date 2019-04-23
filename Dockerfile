FROM docker.oa.com:8080/public/golang:latest
ADD ./beegotest $GOPATH/src/golang/beegotest
ADD ./git* $GOPATH/src/github.com
RUN mkdir -p /data/log/
ADD run.sh /run.sh
RUN chmod +x /run.sh
EXPOSE 8080
WORKDIR $GOPATH/src/golang/beegotest
CMD ["/run.sh"]
