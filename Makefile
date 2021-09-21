MAKEFLAGS    += --no-builtin-rules --no-builtin-variables
GNUMAKEFLAGS += --no-print-directory
.SUFFIXES:
.EXPORT_ALL_VARIABLES:

SHELL      := bash -o errexit -o pipefail -o nounset
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
