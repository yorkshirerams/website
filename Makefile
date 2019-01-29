.PHONY: clean
clean:
	rm -fr public
	rm -fr resources

.PHONY: install
install:
	echo "Nothing to install"

.PHONY: vet
vet:
	echo "Nothing to vet"

.PHONY: vet-fix
vet-fix:
	echo "Nothing to fix"

.PHONY: build
build:
	hugo

.PHONY: build-netlify
build-netlify:
	NF_IMAGE_VERSION=1 bash ./scripts/netlify-build-fix.sh && LD_LIBRARY_PATH=$(shell pwd)/tmp/usr/lib/x86_64-linux-gnu $(shell pwd)/tmp/usr/local/bin/hugo --baseURL=$(DEPLOY_URL)

.PHONY: run
run:
	hugo server -D

.PHONY: all
all: clean install vet build
