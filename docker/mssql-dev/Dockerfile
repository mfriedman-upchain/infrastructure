FROM microsoft/mssql-server-linux:latest

WORKDIR /opt

ENV PATH="$PATH:/opt/mssql-tools/bin"

RUN mkdir /opt/bak && mkdir /opt/logs

COPY *.sh ./
COPY *.sql ./




