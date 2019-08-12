#!/bin/bash

set -e

docker stop neo-cli-test || true
docker rm neo-cli-test || true

docker run --name neo-cli-test -it \
    -p 127.0.0.1:20332:20332 \
    -v $PWD/Chain:/neo-cli/Chain \
    -v $PWD/ApplicationLog:/neo-cli/ApplicationLog \
    -v $PWD/config/config.json:/neo-cli/config.json \
    kayuii/neo-cli:testnet