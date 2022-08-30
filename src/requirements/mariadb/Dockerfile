FROM debian:buster

EXPOSE 3306

RUN apt-get update
RUN apt-get install -y mariadb-server;

COPY src/start.sh .
RUN chmod +x start.sh

RUN rm /etc/mysql/mariadb.conf.d/50-server.cnf
COPY src/50-server.cnf /etc/mysql/mariadb.conf.d

RUN chown -R mysql /var/run/mysqld

ENTRYPOINT ["sh", "/start.sh"]