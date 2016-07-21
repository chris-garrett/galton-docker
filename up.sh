#!/bin/sh

. ./config.sh

STATE=`docker inspect --format="{{.State.Running}}" $CONTAINER_NAME 2> /dev/null`
if [ ! -z $STATE ]; then
  echo "Container already running"
else
  echo "Starting up container"
  docker run --name $CONTAINER_NAME -p 8080:8080 -v `pwd`/db/test.db:/opt/galton/test.db -d $IMAGE_NAME
fi
