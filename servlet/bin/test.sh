#!/usr/bin/env bash
SCRIPT_PATH=$(dirname $(readlink -f "$0"))
cd ${SCRIPT_PATH}
docker container stop servlet
docker rmi servlet:latest
./build.sh
./deploy.sh
