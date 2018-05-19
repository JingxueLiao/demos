#!/usr/bin/env bash
SCRIPT_PATH=$(dirname $(readlink -f "$0"))
cd ${SCRIPT_PATH}/..
rm -fr container/webapp
mkdir -p container/webapp
cp target/servlet.war container/webapp
cd container
docker build -t servlet .
docker run -d -p 8080:8080 --rm --name servlet servlet:latest