#!/usr/bin/env bash

cd ../

echo "Building image..."
docker build -t espa-apache2 .

echo "Running container..."
docker run -itd -p 8888:80 --name espa-website espa-apache2

