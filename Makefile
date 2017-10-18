IMAGE = garychen/docker-golang
CONTAINER_NAME = docker-golang
VERSION = 1.0.0

all: build-all

build-all: v1.8.3 v1.8.4 v1.9.1

v1.8.3:
	echo "docker build -t ${IMAGE}:${VERSION}-alpine"
	docker build -t "${IMAGE}:${VERSION}-alpine" -f Dockerfile.${VERSION}-alpine .

v1.8.4:
	echo "docker build -t ${IMAGE}:${VERSION}-alpine"
	docker build -t "${IMAGE}:${VERSION}-alpine" -f Dockerfile.${VERSION}-alpine .

v1.9.1:
	echo "docker build -t ${IMAGE}:${VERSION}-alpine"
	docker build -t "${IMAGE}:${VERSION}-alpine" -f Dockerfile.${VERSION}-alpine .
