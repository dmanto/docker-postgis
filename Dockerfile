FROM debian:buster-slim
LABEL mantainer="Daniel Mantovani - dmanto@cpan.org"
RUN apt-get update && apt-get install -y --no-install-recommends \
    postgis postgresql-client \
    && rm -rf /var/lib/apt/lists/*
RUN mkdir -p /docker-entrypoint-initdb.d
