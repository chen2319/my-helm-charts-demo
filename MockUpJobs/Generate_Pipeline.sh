#!/usr/bin/env bash

WORK_HOME=/Users/yangchen/IntelliJIDEAProjects/my-helm-charts-demo
VERSION=$1
PIPELINE_VALUE_URL=https://raw.githubusercontent.com/chen2319/my-helm-charts-demo/master/deploy_values/yangdemo_pipeline_values_$VERSION.json

curl -s $PIPELINE_VALUE_URL -o $WORK_HOME/MockUpJobs/log/yangdemo_pipeline_values_$VERSION.json

spin pt plan --file $WORK_HOME/MockUpJobs/log/yangdemo_pipeline_values_$VERSION.json | tee $WORK_HOME/MockUpJobs/log/deploy_pipeline_$VERSION.json

spin pipeline save --file $WORK_HOME/MockUpJobs/log/deploy_pipeline_$VERSION.json

