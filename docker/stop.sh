#!/bin/bash 
# run agent in docker

image="herdr-agent"

set -ex

docker rm -f $image

