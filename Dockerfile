FROM nginx:1.15-alpine

LABEL maintainer="info@redmic.es"

COPY static-pages.conf /etc/nginx/conf.d

COPY content /usr/share/nginx/html
