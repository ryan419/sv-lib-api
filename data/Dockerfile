FROM postgres:11.1-alpine

RUN mkdir -p /data
ADD . /data
WORKDIR /data

ADD create-table.sql /docker-entrypoint-initdb.d/
ADD insert-test-data.sql /docker-entrypoint-initdb.d/
