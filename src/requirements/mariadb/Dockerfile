FROM debian:buster
EXPOSE 3306

RUN apt-get update
RUN apt-get install -y mariadb-server vim procps

#RUN mysql_secure_installation --port=3306

RUN rm /etc/mysql/mariadb.conf.d/50-server.cnf
COPY src/50-server.cnf /etc/mysql/mariadb.conf.d

COPY src/start.sh .
RUN chmod 777 start.sh
WORKDIR /var/www/wordpress
ENTRYPOINT ["sh", "/start.sh"]