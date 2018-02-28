### STAGE 1: Build ###



FROM nginx:1.13.9-alpine

RUN cd /etc/nginx

RUN cat nginx.conf

