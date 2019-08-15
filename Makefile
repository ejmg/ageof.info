SITE_DIR=site

ifdef CI_COMMIT_REF_NAME
    export BRANCH = $(CI_COMMIT_REF_NAME)
else 
    export BRANCH := $(shell git rev-parse --abbrev-ref HEAD)
endif

export STAGING_HOST = null.ageof.info

STAGING_BUCKET=s3://null.ageof.info/
SITE_BUCKET=s3://ageof.info

clean:
	$(MAKE) -C $(SITE_DIR) clean

build:
	$(MAKE) -C $(SITE_DIR) build

deploy: build
	aws s3 sync target $(SITE_BUCKET)

prepare-staging:
	aws s3 sync staging $(STAGING_BUCKET)

build-staging:
	$(MAKE) -C $(SITE_DIR) build-staging

deploy-staging: build-staging
	aws s3 sync target $(STAGING_BUCKET)$(BRANCH)

remove-staging:
	if [ "$(BRANCH)" = master ]; then \
	    echo "will not remove on master"; \
	else \
	    aws s3 rm --recursive $(STAGING_BUCKET)$(BRANCH); \
	fi

serve:
	$(MAKE) -C $(SITE_DIR) serve

DOCKER_REPO=registry.gitlab.com/ejmg/ageof.info

build-zola-docker:
	docker login registry.gitlab.com
	docker build -t $(DOCKER_REPO) .

push-image-to-gl: build-zola-docker
	docker push $(DOCKER_REPO)

ZOLA_VERSION=v0.8.0

install-zola:
	wget https://github.com/getzola/zola/releases/download/${ZOLA_VERSION}/zola-${ZOLA_VERSION}-x86_64-unknown-linux-gnu.tar.gz -O zola.tar.gz
	tar -xzf zola.tar.gz -C ~/usr/bin/

.PHONY: clean build deploy prepare-staging build-staging remove-staging serve build-zola-docker push-image-to-gl install-zola
