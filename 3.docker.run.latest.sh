#!/usr/bin/env bash
set -x

export CMD_PATH=$(cd `dirname $0`; pwd)
export PROJECT_NAME="${CMD_PATH##*/}"
echo $PROJECT_NAME
cd $CMD_PATH

docker pull gnuhub/10002-anolisos-8-docker-base-main:latest
docker run -it -v ./:/code -w /code gnuhub/10002-anolisos-8-docker-base-main:latest bash
