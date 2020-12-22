#!/bin/bash -xe

for i in "$@"
do
case $i in
    -b|--build)
		docker build --file backend/Dockerfile -t latest --target build backend/
		docker build --file frontend/Dockerfile -t latest --target build frontend/
    shift
    ;;
esac
done

docker-compose up
