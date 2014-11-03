FROM google/golang:latest

MAINTAINER Michael Prinsloo

RUN useradd --system --uid=1000 --gid=100 --shell /bin/bash mduser

RUN go get menteslibres.net/luminos

RUN luminos init /md

RUN chown -R 1000:100 /md

VOLUME ["/md"]

WORKDIR /md

EXPOSE 9000

CMD ["luminos","run"]
