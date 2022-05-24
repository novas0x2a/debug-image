FROM alpine:3.16.0

RUN apk add -U --no-cache \
    bash            \
    bind-tools      \
    curl            \
    git             \
    iproute2        \
    iputils         \
    make            \
    musl-dev        \
    nmap            \
    openssl         \
    postgresql-client \
    py3-virtualenv  \
    python3         \
    redis           \
    tar             \
    tcpdump         \
    vim             \
    wget            \
    zsh             \
    && apk --no-cache upgrade

# https://storage.googleapis.com/kubernetes-release/release/stable.txt
ENV KUBECTL_VERSION v1.20.9

ENV VEGETA_VERSION 12.8.4

RUN curl -L -o /usr/bin/kubectl https://storage.googleapis.com/kubernetes-release/release/${KUBECTL_VERSION}/bin/linux/amd64/kubectl \
    && chmod +x /usr/bin/kubectl \
    && curl -L -o /tmp/vegeta.tar.gz https://github.com/tsenart/vegeta/releases/download/v${VEGETA_VERSION}/vegeta_${VEGETA_VERSION}_linux_amd64.tar.gz \
    && tar -C /usr/bin -xf /tmp/vegeta.tar.gz vegeta \
    && rm /tmp/vegeta.tar.gz
