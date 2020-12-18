FROM azcr.docker.prod.walmart.com/mssql/server:2019-latest

USER root

RUN mkdir -p /usr/app
WORKDIR /usr/app

COPY . /usr/app

RUN chmod +x /usr/app/run-initialization.sh

EXPOSE 1433

CMD /bin/bash ./entrypoint.sh