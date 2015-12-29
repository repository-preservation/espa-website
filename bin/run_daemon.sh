#!/usr/bin/env bash

if [ ! -f Dockerfile ]
  then
    echo "Dockerfile not found, moving up a directory.."
    cd ../
    if [ ! -f Dockerfile ]
      then
        echo "Dockerfile not found. This script should"
        echo "be called as bin/run_daemon.sh or ./run_daemon.sh"
        echo "from the espa-website project folder"
        echo "exiting..." 
        exit 1
    fi
fi 

if [ -f httpd.conf.espa ]
  then
    echo "custom Apache config found, enabling in Dockerfile.."
    sed -i "s/^# RUN mv/RUN mv/g" Dockerfile
    sed -i "s/^# COPY/COPY/g" Dockerfile
fi

echo "Building image..."
docker build -t espa-apache2 .

echo "Running container..."
docker run -itd -p 8888:80 --name espa-website espa-apache2

