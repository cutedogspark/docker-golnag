GOLANG_BASE_IMAGE := 1.10-alpine
BUILD_IMAGE := garychen/golang
BUILD_VERSION := $(GOLANG_BASE_IMAGE)

all: build-all

build-all: last

last:
	echo "docker build -t $(BUILD_IMAGE):$(BUILD_VERSION)"
	docker build  -t "$(BUILD_IMAGE):$(BUILD_VERSION)" --build-arg IMG_TAG=${GOLANG_BASE_IMAGE} .
