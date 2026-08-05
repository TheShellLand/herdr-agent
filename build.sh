#!/bin/bash
# build image 

image=herdr-agent

set -xe

docker build "$@" -t $image:latest -f Dockerfile .

docker images | grep $image
