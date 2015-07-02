# espa-web

This project is the ESPA website implemented with angular.js, bootstrap 3, and Docker.  It relies on the espa-api to interact with user orders and information.

## Building the image
If you have Docker installed, simply execute the following commands to get the website up and running.

* `docker build -t espa-apache2 .`
* `docker run -it --rm --name espa-website espa-apache2`

`bin/run_dev.sh` will do this for you.

Alternatively, you can run the docker container as a daemon, keeping it in the background.
* `docker run -it -d --name espa-website espa-apache2`

`bin/run_daemon.sh` is also available.

Once the container is launched, open a browser and point to http://localhost:8888


