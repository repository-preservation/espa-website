!#/usr/bin/env bash

echo "Building image...\n"
docker build -t espa-apache2 ../

echo "Running container...\n"
docker run -itd -p 8888:80 --name espa-website espa-apache2

