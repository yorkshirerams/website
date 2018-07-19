.PHONY: clean
clean:
	rm -fr node_modules

.PHONY: install
install:
	npm install

.PHONY: vet
vet:
	npm run eslint-check
	./node_modules/eslint/bin/eslint.js "src/**/*.js?(x)"
	./node_modules/prettier/bin-prettier.js --list-different "src/**/*.js?(x)"

.PHONY: vet-fix
vet-fix:
	./node_modules/prettier/bin-prettier.js --write "src/**/*.js?(x)"

.PHONY: build
build:
	npm run build

.PHONY: run
run:
	npm run develop

.PHONY: all
all: clean install vet build
