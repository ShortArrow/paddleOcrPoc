#!/bin/bash

mkdir -p ./.paddleocr
file=$1
filename=$(basename "$file")
image_directory=${file/$filename/}
image_path="/work/$filename"
echo "filename: $filename"
echo "image_directory: $image_directory"
echo "image_path: $image_path"
container_id=$(
  docker run \
    -it --entrypoint /bin/bash \
    -v ./.paddleocr:/root/.paddleocr \
    -v "$image_directory:/work" \
    paddleocr:poc \
    --image_dir "$image_path" \
    --use_angle_cls true \
    --lang japan \
    --use_gpu false
)

docker logs -f "$container_id"
docker rm "$container_id"
