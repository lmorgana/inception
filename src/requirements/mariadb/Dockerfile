FROM debian:buster

EXPOSE 3306

RUN apt-get update
RUN apt-get install -y mariadb-server

#RUN mysql_secure_installation --port=3306 -n

#RUN rm /etc/mysql/mariadb.conf.d/50-server.cnf
COPY ./src/50-server.cnf /etc/mysql/mariadb.conf.d/

RUN mkdir /var/run/mysqld/
RUN chown mysql:mysql /var/run/mysqld/

COPY ./src/start.sh .
RUN chmod 777 start.sh
#WORKDIR /var/www/wordpress

ENTRYPOINT ["sh", "/start.sh"]