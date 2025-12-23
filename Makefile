BUNDLE := bundle
JEKYLL := $(BUNDLE) exec jekyll

all: build

config:
	$(BUNDLE) config set --local path bundle
.PHONY: config

install:
	$(BUNDLE) install
.PHONY: install

build:
	$(JEKYLL) build
.PHONY: build

serve: build
	$(JEKYLL) serve --host 0.0.0.0
.PHONY: serve
