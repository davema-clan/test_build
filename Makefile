# 定义变量
IMAGE_NAME := hello
IMAGE_TAG := latest

# 构建 Docker 镜像
build:
	docker build -t $(IMAGE_NAME):$(IMAGE_TAG) .

# 运行 Docker 镜像
run:
	docker run  $(IMAGE_NAME):$(IMAGE_TAG)

# 清理 Docker 镜像
clean:
	docker rmi $(IMAGE_NAME):$(IMAGE_TAG)