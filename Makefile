BUNDLE := bundle
JEKYLL := $(BUNDLE) exec jekyll

all: build

install:
	$(BUNDLE) install

build:
	$(JEKYLL) build

serve: build
	$(JEKYLL) serve
