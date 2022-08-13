#!/bin/bash

if [ $# -ne 1 ]; then
    echo "please specify 1 command line arguments"
    exit 1
fi

echo "Init process ....."
sleep 1
echo "starting containers $1....."
echo "ingrese puerto a mapear en host anfitrion:"
read -r port
echo "ingrese imagen: "
read -r img
docker run -d --name $1 -p $port:80 $img
echo "containers started!!!"
docker ps



