FROM httpd:2.4

# move our website into the image
COPY ./htdocs/ /usr/local/apache2/htdocs/

# set a terminal for convienience when logging in
RUN export TERM=xterm
