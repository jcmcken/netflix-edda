.PHONY: all check prepare compile clean noop archive

# NOTE: It is not advised that you use any of the targets except
#       ``build`` and ``clean`` unless you know what you're doing.

noop:
	# noop

clean:
	./scripts/clean.sh

build: check prepare compile

check:
	./scripts/check.sh

prepare: check
	./scripts/prepare.sh

compile: 
	./scripts/compile.sh

archive:
	./scripts/archive.sh
