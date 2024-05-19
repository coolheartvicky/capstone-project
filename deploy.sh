#!/bin/bash

DOCKER_IMAGE="my-html-app"
DOCKER_TAG="latest"
DOCKER_USERNAME="vignesh110396"
DOCKER_PASSWORD="Mar@110397"
DOCKER_REPO="$"vignesh110396"/$"my-html-app":$latest"
echo "$Mar@110397" | docker login -u "$vignesh110396" --password-stdin
docker tag "$DOCKER_IMAGE" "$DOCKER_REPO"
docker push "$DOCKER_REPO"
if [ $? -eq 0 ]; then
    echo "Docker image '$DOCKER_REPO' pushed successfully to Docker Hub."
else
    echo "Error: Failed to push Docker image to Docker Hub."
fi


# this is the deploy bash