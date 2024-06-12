FROM nginx

RUN apt-get update
RUN apt-get install -y apache2
COPY ./masgWebsite/websiteNest /var/www/

EXPOSE 3009
CMD /usr/sbin/apachectl -D FOREGROUP
