FROM golang:1.9.4-alpine

MAINTAINER Ming-Jui Chen <cutedogspark@gmail.com>

RUN apk update \
  && apk add git make curl perl bash build-base && rm -rf /var/cache/apk/*

ENV MIGRATE_VER 3.0.1

RUN curl https://glide.sh/get | sh && \
    go get -u github.com/golang/dep/cmd/dep && \
    go get -u github.com/golang/protobuf/protoc-gen-go && \
    go get -u github.com/jteeuwen/go-bindata/...

RUN curl -L https://github.com/mattes/migrate/releases/download/v${MIGRATE_VER}/migrate.linux-amd64.tar.gz | tar xvz && mv migrate.linux-amd64 migrate && \
    mv migrate /usr/local/bin/

WORKDIR $GOPATH
