#!/bin/bash

# Docker credentials
DOCKER_IMAGE="capstoneproject"
DOCKER_TAG="latest"
DOCKER_USERNAME="vignesh110396"
DOCKER_PASSWORD="Mar@110397"
DOCKER_REPO="${DOCKER_USERNAME}/${DOCKER_IMAGE}:${DOCKER_TAG}"

# Login to Docker Hub using environment variables
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin

# Check if the login was successful
if [ $? -ne 0 ]; then
    echo "Error: Docker login failed."
    exit 1
fi

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
