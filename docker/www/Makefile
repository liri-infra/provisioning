all: build

build:
	@docker build -t liri-infra/www .

push: build
	@docker tag $(shell docker images -q liri-infra/www) liri-docker-registry.bintray.io/library/nginx:latest
	@docker push liri-docker-registry.bintray.io/library/nginx:latest
