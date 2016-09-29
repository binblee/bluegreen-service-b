git_hash=$(git rev-parse --short HEAD)
docker build -t registry.cn-hangzhou.aliyuncs.com/jingshanlb/bluegreen-service-b:${git_hash} .
image_id=$(docker build -q -t registry.cn-hangzhou.aliyuncs.com/jingshanlb/bluegreen-service-b:${git_hash})
docker tag ${image_id} registry.cn-hangzhou.aliyuncs.com/jingshanlb/bluegreen-service-b:latest
docker push registry.cn-hangzhou.aliyuncs.com/jingshanlb/bluegreen-service-b:${git_hash}
docker push registry.cn-hangzhou.aliyuncs.com/jingshanlb/bluegreen-service-b:latest
