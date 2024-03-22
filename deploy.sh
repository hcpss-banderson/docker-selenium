#!/usr/bin/env bash

docker buildx create --use --name selenium_builder

docker buildx build \
    -t banderson/selenium \
    --platform=linux/arm64,linux/amd64 \
    --push .

docker buildx rm selenium_builder
