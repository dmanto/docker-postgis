FROM debian:buster-slim
LABEL mantainer="Daniel Mantovani - dmanto@cpan.org"
RUN apt-get update && apt-get install -y --no-install-recommends \
    postgis \
    && rm -rf /var/lib/apt/lists/*
RUN mkdir -p /docker-entrypoint-initdb.d
COPY ./initdb-postgis.sh /docker-entrypoint-initdb.d/10_postgis.sh
