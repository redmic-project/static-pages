ARG NGINX_IMAGE_TAG=1-alpine

FROM nginx:${NGINX_IMAGE_TAG}

LABEL maintainer="info@redmic.es"

HEALTHCHECK --interval=30s --timeout=10s --start-period=30s --retries=10 \
	CMD wget --spider -q http://localhost/nginx-health || exit 1

COPY static-pages.conf /etc/nginx/conf.d/default.conf
COPY content /usr/share/nginx/html
