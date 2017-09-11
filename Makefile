.PHONY = build run
PROJECT_NAME = docker-pipreqs
DOCKERHUB_USER=azlyth
QUAY_USER=azlyth

all: build run

build:
	docker build -t $(PROJECT_NAME) image/

run:
	docker run --rm $(PROJECT_NAME)

tag:
	docker tag $(PROJECT_NAME) $(DOCKERHUB_USER)/$(PROJECT_NAME)
	docker tag $(PROJECT_NAME) quay.io/$(QUAY_USER)/$(PROJECT_NAME)

push:
	docker push $(DOCKERHUB_USER)/$(PROJECT_NAME)
	docker push quay.io/$(QUAY_USER)/$(PROJECT_NAME)
