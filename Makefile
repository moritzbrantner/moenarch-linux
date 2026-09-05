.PHONY: validate build boot-test

validate:
	./tests/validate-profile

build:
	./scripts/build-iso

boot-test:
	./scripts/test-iso-boot
