#!/bin/bash
IMAGE_NAME="capstoneproject"
DOCKERFILE_PATH="Dockerfile"
sudo docker build -t "$IMAGE_NAME" -f "$DOCKERFILE_PATH" .
if [ $? -eq 0 ]; then
    echo "Docker image '$IMAGE_NAME' built successfully."
else
    echo "Error: Docker image build failed."
fi