IMAGE = garychen/golang
VERSION = 1.9.4-alpine

all: build-all

build-all: last

last:
	echo "docker build -t $(IMAGE):$(VERSION)"
	@docker build -t "$(IMAGE):$(VERSION)" .
