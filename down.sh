#!/bin/sh

. ./config.sh

# Kill dont stop. 
STATE=`docker inspect --format="{{.State.Running}}" $CONTAINER_NAME 2> /dev/null`
if [ ! -z $STATE ]; then
  echo "Bringing down container"
  docker kill $CONTAINER_NAME
else 
  echo "Container not running"
fi

# Remove container
STATE=`docker inspect --format="{{.Id}}" $CONTAINER_NAME 2> /dev/null`
if [ ! -z $STATE ]; then
  docker rm $CONTAINER_NAME
fi
