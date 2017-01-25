#!/usr/bin/env bash

# This script takes two optional arguemnts
# - container name (default: comments_microservice)
# - container port (default: 8080)
SERVICE_NAME=${1:-comments_microservice}
SERVICE_PORT=${2:-8080}

# Build the image
docker build -t jkulak/comments-microservice .

# Run the container (remove if it existed)
if [ ! "$(docker ps -q -f name=$SERVICE_NAME)" ]; then
    if [ "$(docker ps -aq -f status=exited -f name=$SERVICE_NAME)" ]; then
        # cleanup
        docker rm $SERVICE_NAME
    elif
        [ "$(docker ps -aq -f status=created -f name=$SERVICE_NAME)" ]; then
        # cleanup
        docker rm $SERVICE_NAME
    fi
    # run your container
    docker run --rm --name $SERVICE_NAME -v /Users/jkulak/Developer/comments-microservice/src/:/usr/local/tomcat/webapps/ROOT -p $SERVICE_PORT:8080 jkulak/comments-microservice
fi
