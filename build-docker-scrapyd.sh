# !/bin/sh
set -ex
IMAGE_VERSION=$1
IMAGE_BASE=usydapeng/scrapyd
IMAGE=${IMAGE_BASE}:${IMAGE_VERSION}
MY_PATH=$PWD
docker build --platform=linux/amd64 -t $IMAGE -f Dockerfile-scrapyd ./
docker push $IMAGE
echo "docker rm -f scrapyd"
echo "docker run -d --restart=always --name scrapyd -p 16800:16800 -p 7905:7900 --shm-size=\"2g\" $IMAGE"
