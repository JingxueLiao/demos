#!/usr/bin/env bash
SCRIPT_PATH=$(dirname $(readlink -f "$0"))
cd ${SCRIPT_PATH}/..
mvn clean install
