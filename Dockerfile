# ------------------------------
# The Dockerfile installs 'Apache Web Server' inside Alpine Linux latest
# and gets the Weather info in your Region on a simple web page
# ------------------------------

FROM alpine

LABEL maintainer="vladimir@sokolenko.org"

RUN apk update && \
    apk upgrade && \
    apk add bash && \
    apk add apache2 && \
    apk cache clean

COPY index.html /var/www/localhost/htdocs/

CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
