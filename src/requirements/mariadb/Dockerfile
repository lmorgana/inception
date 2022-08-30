FROM debian:buster

EXPOSE 3306

RUN apt-get update
RUN apt-get install -y mariadb-server;

COPY src/setup.sh .
RUN chmod 777 setup.sh

RUN rm /etc/mysql/mariadb.conf.d/50-server.cnf
COPY tools/50-server.cnf /etc/mysql/mariadb.conf.d

ENTRYPOINT ["sh", "/setup.sh"]