# !/bin/sh
set -ex
IMAGE_VERSION=$1
IMAGE_BASE=usydapeng/scrapydweb
IMAGE=${IMAGE_BASE}:${IMAGE_VERSION}
MY_PATH=$PWD
docker build --platform=linux/amd64 -t $IMAGE -f Dockerfile-scrapydweb ./
docker push $IMAGE
echo "docker rm -f scrapydweb"
echo "docker run -d --restart=always --name scrapydweb -p 15001:15001 $IMAGE"
