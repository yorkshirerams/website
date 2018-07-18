.PHONY: vet
vet:
	npm run eslint-check
	eslint .
	./node_modules/prettier/bin-prettier.js --list-different "src/**/*.js?(x)"

.PHONY: vet-fix
vet-fix:
	./node_modules/prettier/bin-prettier.js --write "src/**/*.js?(x)"