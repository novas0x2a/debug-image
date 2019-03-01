FROM alpine:3.9

RUN apk add -U --no-cache \
    bash            \
    bind-tools      \
    curl            \
    git             \
    iproute2        \
    iputils         \
    make            \
    musl-dev        \
    py3-virtualenv  \
    python3         \
    tar             \
    vim             \
    wget            \
    zsh             \
    && apk --no-cache upgrade
