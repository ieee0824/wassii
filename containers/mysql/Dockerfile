FROM mysql:latest
ENV MYSQL_ALLOW_EMPTY_PASSWORD yes

COPY init.d/init.sql /docker-entrypoint-initdb.d/init.sql
