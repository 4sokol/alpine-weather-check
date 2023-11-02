# ------------------------------
# The Dockerfile installs 'Apache Web Server' inside Alpine Linux latest
# and gets the Weather info in your Region on a simple web page
# ------------------------------

FROM alpine

LABEL maintainer="vladimir@sokolenko.org"

RUN apk update
RUN apk upgrade
RUN apk add bash
RUN apk add apache2
RUN apk cache clean

COPY index.html /var/www/localhost/htdocs/

CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80