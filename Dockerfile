FROM httpd:2.4

# move our website into the image
COPY ./htdocs/ /usr/local/apache2/htdocs/

# custom httpd.conf
# RUN mv /usr/local/apache2/conf/httpd.conf /usr/local/apache2/conf/httpd.conf.orig
# COPY ./httpd.conf.espa /usr/local/apache2/conf/httpd.conf

# set a terminal for convienience when logging in
RUN export TERM=xterm
