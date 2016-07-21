#!/bin/sh

. ./config.sh

if [ ! -d galton ]; then
  git clone https://github.com/macterra/galton.git
fi

docker build --rm=true -t $IMAGE_NAME .
docker tag $IMAGE_NAME $LATEST_IMAGE_NAME

