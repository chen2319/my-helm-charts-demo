#!/usr/bin/env bash

VERSION=$1
ENV=$2


curl -X POST --header 'Content-Type: application/json' --header 'Accept: application/json' -d '{  "parameters": { "env": "'$ENV'" } }' "http://127.0.0.1:8084/pipelines/v2/yangdemo/yangdemo-deployment-$VERSION"
