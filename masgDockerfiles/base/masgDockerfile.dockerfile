FROM ubuntu:latest

RUN sed -i 's/http:\/\/archive.ubuntu.com\/ubuntu/nl.archive.ubuntu.com\/ubuntu/g' /etc/apt/sources.list
RUN apt-get update && apt-get install -y \
    apt-utils \
    software-properties-common

RUN apt-get update && apt-get install -f -y

RUN apt-get update && \
    apt-get install -y apache2 && \
    nodejs \
    npm \
    git \
    rm -rf /var/lib/apt/lists/* 

RUN git clone https://github.com/morgadodesarrollador/Autocaravaneando /var/www/html

CMD ["apachectl", "-D", "FOREGROUND"]
