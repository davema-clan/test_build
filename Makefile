# 定义变量
IMAGE_NAME := hello
IMAGE_TAG := latest

# 构建 Docker 镜像
build:
	docker build -t $(ARGS)$(IMAGE_NAME):$(IMAGE_TAG) .

# 运行 Docker 镜像
run:
	docker run  $(ARGS)$(IMAGE_NAME):$(IMAGE_TAG)

# 清理 Docker 镜像
clean:
	docker rmi $(ARGS)$(IMAGE_NAME):$(IMAGE_TAG)