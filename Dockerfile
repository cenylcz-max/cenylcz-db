FROM mysql:latest

ADD /docker/mysql/initdb /docker-entrypoint-initdb.d/
ADD /docker/mysql/conf /etc/mysql/conf.d/
