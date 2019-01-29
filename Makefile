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

.PHONY: run
run:
	hugo server -D

.PHONY: all
all: clean install vet build
