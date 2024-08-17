ARG NGINX_VERSION=${NGINX_VERSION}
FROM nginx:${NGINX_VERSION}-alpine

RUN adduser -D -H -u 1000 -s /bin/bash www-data -G www-data

RUN mkdir -p /var/www && \
    chown -R www-data:www-data /var/www && \
    chmod 755 -R /var/www

WORKDIR /etc/nginx

CMD ["nginx", "-g", "daemon off;"]