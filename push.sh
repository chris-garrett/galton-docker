#!/bin/sh

. ./config.sh

docker login
docker push $IMAGE_NAME 
docker push $LATEST_IMAGE_NAME

