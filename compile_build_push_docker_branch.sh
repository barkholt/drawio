#!/bin/bash
TAG_NAME=$(git rev-parse --abbrev-ref HEAD | sed 's/[^[:alnum:]\.\_\-]/-/g')
docker build -f Dockerfile -t klimafonden .
docker tag klimafonden mbeventgames/klimafonden:$TAG_NAME
docker push mbeventgames/klimafonden:$TAG_NAME
notify-send "Klimafonden" "Docker $TAG_NAME image is ready to be deployed!"
