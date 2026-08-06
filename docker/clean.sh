#!/bin/bash

image="herdr-agent"

set -x

docker volume rm -f $image-config

