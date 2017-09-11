.PHONY = build run
PROJECT_NAME = new-python-project

all: build run

build:
	docker build -t $(PROJECT_NAME) image/

run:
	docker run --rm $(PROJECT_NAME)
