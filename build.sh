#!/bin/bash
IMAGE_NAME="my-html-app"
DOCKERFILE_PATH="Dockerfile"
docker build -t "$my-html-app" -f "$DOCKERFILE_PATH" .
if [ $? -eq 0 ]; then
    echo "Docker image '$my-html-app' built successfully."
else
    echo "Error: Docker image build failed."
fi
