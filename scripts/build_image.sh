IMAGE_NAME="mytor"
DEV_DOCKERFILE="Dockerfile"

docker build \
    -t $IMAGE_NAME \
    -f $DEV_DOCKERFILE \
    --build-arg USER_ID=$(id -u) \
    --build-arg GROUP_ID=$(id -g) \
    .
