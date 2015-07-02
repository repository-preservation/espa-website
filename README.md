# espa-web

This project is the ESPA website implemented with angular.js, bootstrap 3, and Docker.  It relies on the espa-api to interact with user orders and information.

## Building the image
If you have Docker installed, simply execute the following commands to get the website up and running.

1. `docker build -t espa-apache2 .`
2. `docker run -it --rm --name espa-website espa-apache2`

A better way is to run the docker container as a daemon, using the -d flag.
`docker run -it -d --name espa-website espa-apache2`

