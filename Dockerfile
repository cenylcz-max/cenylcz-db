FROM mysql:latest
ADD /docker/mysql/initdb /docker-entrypoint-initdb.d/
