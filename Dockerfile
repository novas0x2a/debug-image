FROM alpine:3.4
MAINTAINER Mike Lundy <mike@fluffypenguin.org>

RUN apk add --update --no-cache \
    bash            \
    bind-tools      \
    curl            \
    git             \
    iproute2        \
    iputils         \
    make            \
    musl-dev        \
    py-virtualenv   \
    tar             \
    vim             \
    wget            \
    zsh
