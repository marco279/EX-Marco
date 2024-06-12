FROM nginx

#Declabar variables
ARG MASGCONTEXTO1
ARG MASGTZ1
ARG MASGIDRSA1
ARG MASGAPP1
ARG MASGREPO1
#Instalacion de las aplicaciones
RUN apt update && apt install -yq --no-install-recommends \ 
    git \
    curl \
    dos2unix \
    nodejs \
    npm 

RUN mkdir /home/masgweb
RUN mkdir /var/www
RUN mkdir /var/www/masgWebsite
RUN mkdir /logs
RUN cp -r /logs /var/websitelogs/


COPY ./masgClaves/id_rsa.pub /root/
COPY ./masgdockerfiles/nginx.conf /etc/nginx/conf.d/default.conf
COPY ./masgdockerfiles/base/start.sh /root


EXPOSE 5432
ENTRYPOINT [ "tail -f /dev/null" ]

