.PHONY: validate build boot-test install-test

validate:
	./tests/validate-profile
	bash ./tests/test-project-workspace

build:
	./scripts/build-iso

boot-test:
	./scripts/test-iso-boot

install-test:
	./scripts/test-installed-system
