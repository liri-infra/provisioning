REGISTRY=liri-docker-registry.bintray.io
PREFIX=infra
NAME=slackbridge

all: build

build:
	@docker build -t $(PREFIX)/$(NAME) .

push: build
	@docker tag $(shell docker images -q $(PREFIX)/$(NAME)) $(REGISTRY)/$(PREFIX)/$(NAME):latest
	@docker push $(REGISTRY)/$(PREFIX)/$(NAME):latest
