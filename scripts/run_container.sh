IMAGE_NAME="mytor"

docker run \
    -d \
    --rm \
    -p 9050:9050 \
    $IMAGE_NAME
