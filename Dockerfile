FROM nginx:mainline-alpine
LABEL maintainer="josh@userdel.com"

RUN rm /etc/nginx/conf.d/*
ADD hello.conf /etc/nginx/conf.d/
ADD index.html /usr/share/nginx/html/