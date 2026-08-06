#!/bin/bash
# run agent in docker

image="herdr-agent"
mount="."
folder=$(basename "`pwd`" | sed 's/ /-/g')

set -e

docker network create agents >/dev/null 2>&1 || :

set -x

docker run --rm -it \
  --network agents \
  --shm-size=2g \
  -v //var/run/docker.sock:/var/run/docker.sock \
  -v $mount:/root/brain \
  $image "$@"

  #-v $image-config:/root/.config/herdr/ \

