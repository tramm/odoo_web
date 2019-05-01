FROM nginx
MAINTAINER tramm

COPY nginx.conf /etc/nginx/nginx.conf
RUN mkdir -p /etc/nginx/sites-available
COPY proxy_params /etc/nginx/proxy_params
COPY dev.conf /etc/nginx/sites-available/dev.conf
COPY stage.conf /etc/nginx/sites-available/stage.conf