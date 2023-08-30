FROM debian:buster

RUN apt-get update -y && apt-get install mariadb-server -y

COPY conf/50-server.cnf	/etc/mysql/mariadb.conf.d/50-server.cnf

COPY tools/script.sh /

RUN chmod +x script.sh

ARG DB_HOST DB_NAME DB_USER DB_PASSWORD DB_ROOT_PASSWORD

RUN /script.sh

CMD ["mysqld"]
