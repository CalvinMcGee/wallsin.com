#!/bin/sh

cd "$(dirname "$0")"

echo "Please navigate to http://localhost:8080"

docker run --init --rm \
--mount type=bind,source="$(pwd)",target=/app \
--entrypoint /bin/bash \
-w="/app" \
-p 8080:8080 \
-it ruby:latest
