#!/bin/bash
REPOSITORY=/home/ubuntu/test_aws_cd

cd $REPOSITORY
git pull
cd client
pm2 kill
yarn install
pm2 start yarn --name picnic -- start