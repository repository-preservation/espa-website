#!/usr/bin/env bash

echo "Building image...\n"
docker build -t espa-apache2 .

echo "Running dev container...\n"
docker run -it --rm -p 8888:80 -v $PWD/htdocs:/usr/local/apache2/htdocs --name espa-website espa-apache2

