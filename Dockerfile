FROM alpine:3.4
MAINTAINER Mike Lundy <mike@fluffypenguin.org>

RUN apk add --update --no-cache \
    curl            \
    wget            \
    iproute2        \
    bind-tools      \
    iputils         \
    bash            \
    git             \
    make            \
    musl-dev        \
    py-virtualenv   \
    tar
