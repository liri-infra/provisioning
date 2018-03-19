IMAGE_NAME=liriorg/nginx

all: build

build:
	@docker build -t $(IMAGE_NAME) .

push: build
	@docker push $(IMAGE_NAME):latest
