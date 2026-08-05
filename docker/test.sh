#!/bin/bash
# test image 

image="herdr-agent"

set -xe

docker run --rm -it \
  --network agents \
  --shm-size=2g \
  -v //var/run/docker.sock:/var/run/docker.sock \
  --entrypoint /bin/bash \
  $image
