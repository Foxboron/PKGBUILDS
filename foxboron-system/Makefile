all: build

install:
	./bin/pacstrap-mnt

update:
	./bin/update-patches
	updpkgsums

build: update
	build

.PHONY: install
