BASE := $(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))

SHELL := bash -o errexit -o pipefail

ifdef VERBOSE
	Q =
	E = @true 
	CAPTURE := 
else
	Q = @
	E = @echo 
	CAPTURE := $(shell command -v chronic 2>/dev/null) 
endif


all: help

help:
	$(Q)awk -F ':|##' \
		'/^[^\t].+?:.*?##/ {\
			printf "\033[36m%-30s\033[0m %s\n", $$1, $$NF \
		}' $(MAKEFILE_LIST) | sort

build: Dockerfile ## build it, yo
	$(Q)docker build -t novas0x2a/debug:latest -f $< .

push: build Dockerfile ## push it, yo
	$(Q)docker push novas0x2a/debug:latest

.SUFFIXES:
