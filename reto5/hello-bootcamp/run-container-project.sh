#!/bin/sh
VERSION=1.0.0

docker build -t node-reto5:$VERSION .
docker run -dit -p 8080:4000 --name reto5 node-reto5:$VERSION
docker tag node-reto5:$VERSION lsoria88/node-reto5:$VERSION
docker push lsoria88/node-reto5:$VERSION

