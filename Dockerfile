FROM ubuntu:16.04
MAINTAINER admin@evoke.net
RUN apt-get update
RUN apt-get install nginx -y
COPY index.html /var/www/html
EXPOSE 80/tcp
ENTRYPOINT service nginx restart && bash
WORKDIR /var/www/html


