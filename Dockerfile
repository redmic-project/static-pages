FROM nginx:alpine

LABEL maintainer="info@redmic.es"

COPY static-pages.conf /etc/nginx/conf.d

COPY content /usr/share/nginx/html
