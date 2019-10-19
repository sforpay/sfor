#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/..

DOCKER_IMAGE=${DOCKER_IMAGE:-sforpay/sford-develop}
DOCKER_TAG=${DOCKER_TAG:-latest}

BUILD_DIR=${BUILD_DIR:-.}

rm docker/bin/*
mkdir docker/bin
cp $BUILD_DIR/src/sford docker/bin/
cp $BUILD_DIR/src/sfor-cli docker/bin/
cp $BUILD_DIR/src/sfor-tx docker/bin/
strip docker/bin/sford
strip docker/bin/sfor-cli
strip docker/bin/sfor-tx

docker build --pull -t $DOCKER_IMAGE:$DOCKER_TAG -f docker/Dockerfile docker
