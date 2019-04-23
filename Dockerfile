FROM docker.oa.com:8080/public/golang:latest
ADD . $GOPATH/src/beegotest
ADD 
RUN mkdir -p /data/log/
ADD run.sh /run.sh
RUN chmod +x /run.sh
EXPOSE 9090
WORKDIR $GOPATH/src/beegotest
CMD ["sleep", "infinity"]
