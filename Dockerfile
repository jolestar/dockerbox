FROM alpine:3.4
MAINTAINER jolestar <jolestar@gmail.com>

RUN apk add --no-cache curl bash tcpdump darkhttpd
RUN curl -L https://github.com/sequenceiq/docker-alpine-dig/releases/download/v9.10.2/dig.tgz|tar -xzv -C /usr/local/bin/

RUN mkdir /work && echo "dockerbox index" >/work/index.html 
WORKDIR /work

