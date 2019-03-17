DEFAULT_GOAL := explain
.PHONY: explain
explain:
	### Targets
	#
	@cat Makefile* | grep -E '^[a-zA-Z_-]+:.*?## .*$$' | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

.PHONY: clean
clean: ## Clean the file system
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
build: ## Build the website
	hugo

.PHONY: build-netlify
build-netlify:
	NF_IMAGE_VERSION=1 bash ./scripts/netlify-build-fix.sh && LD_LIBRARY_PATH=$(shell pwd)/tmp/usr/lib/x86_64-linux-gnu $(shell pwd)/tmp/usr/local/bin/hugo --baseURL=$(DEPLOY_URL)

.PHONY: run
run: ## Run the website locally
	hugo server -D

.PHONY: all
all: clean install vet build
