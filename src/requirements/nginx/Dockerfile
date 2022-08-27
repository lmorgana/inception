FROM debian:buster

EXPOSE 443
RUN apt-get -y update
RUN apt-get install -y nginx
RUN apt-get install -y openssl


RUN openssl req -x509 -sha256 -nodes -days 365 -newkey rsa:2048 \
            -subj "/C=FR/ST=Russia/L=Kazan/O=School21/CN=lmorgana.42.fr" \
            -keyout /etc/ssl/private/lmorgana.key -out /etc/ssl/certs/lmorgana.crt

COPY ./conf/default    /etc/nginx/sites-available
RUN ls -s /etc/nginx/sites-available/default /etc/nginx/sites-enabled/

CMD echo "nginx started" && nginx -g "daemon off;"