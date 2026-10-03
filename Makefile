.PHONY: validate build boot-test install-test

validate:
	./tests/validate-profile

build:
	./scripts/build-iso

boot-test:
	./scripts/test-iso-boot

install-test:
	./scripts/test-installed-system
