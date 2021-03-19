name       := novas0x2a/debug
tag        := $(shell git describe --always)
nameTag    := $(name):$(tag)
nameLatest := $(name):latest

build:
	docker build -t $(nameTag) .
	docker tag $(nameTag) $(nameLatest)

push:
	docker push $(nameTag)
	docker push $(nameLatest)
