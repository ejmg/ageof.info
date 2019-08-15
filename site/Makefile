OUTPUT_DIR=../target

OUTPUT_FLAG=--output-dir $(OUTPUT_DIR)

STAGING_URL := https://$(STAGING_HOST)/$(BRANCH)

clean:
	@echo "LOG: deleting contents of target/"
	rm -r $(OUTPUT_DIR)

build:
	zola build $(OUTPUT_FLAG)

build-staging:
	zola build $(OUTPUT_FLAG) --base-url '$(STAGING_URL)'

serve:
	zola serve $(OUTPUT_FLAG)

check:
	zola check

.PHONY: clean build build-staging serve
