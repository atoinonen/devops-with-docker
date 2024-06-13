#!/bin/sh
docker build https://github.com/$1.git -t $2
docker push $2
