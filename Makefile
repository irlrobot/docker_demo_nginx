NAME := irlrobot/nginx-demo
TAG := $$(git rev-parse --short HEAD)
IMAGE := ${NAME}:${TAG}
LATEST := ${NAME}:latest

build:
	@docker build . -t ${IMAGE}
	@docker tag ${IMAGE} ${LATEST}

push:
	@docker push ${NAME}

login:
	@docker login