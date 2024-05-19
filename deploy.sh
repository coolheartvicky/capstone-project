#!/bin/bash

DOCKER_IMAGE="capstoneproject"
DOCKER_TAG="latest"
DOCKER_USERNAME="vignesh110396"
DOCKER_REPO="${DOCKER_USERNAME}/${DOCKER_IMAGE}:${DOCKER_TAG}"

# Login to Docker Hub
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin

# Tag the Docker image
docker tag "$DOCKER_IMAGE" "$DOCKER_REPO"

# Push the Docker image
docker push "$DOCKER_REPO"

# Check if the push was successful
if [ $? -eq 0 ]; then
    echo "Docker image '$DOCKER_REPO' pushed successfully to Docker Hub."
else
    echo "Error: Failed to push Docker image to Docker Hub."
fi
