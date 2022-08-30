FROM debian:buster

EXPOSE 3306

RUN apt-get update
RUN apt-get install -y mariadb-server

#RUN rm /etc/mysql/mariadb.conf.d/50-server.cnf
COPY ./src/50-server.cnf /etc/mysql/mariadb.conf.d/

COPY ./src/start.sh .
RUN chmod 777 start.sh

ENTRYPOINT ["sh", "/start.sh"]