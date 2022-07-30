## Emacs, make this -*- mode: sh; -*-
 
FROM ubuntu:20.04

LABEL org.label-schema.license="GPL-2.0" \
      org.label-schema.vcs-url="https://github.com/eddelbuettel/docker-clang-format-9" \
      maintainer="Dirk Eddelbuettel <edd@debian.org>"

ENV DEBIAN_FRONTEND noninteractive

RUN apt update -qq \
    && apt upgrade --yes \
    && apt install --yes --no-install-recommends clang-format-9 \
    && rm -rf /var/lib/apt/lists/*
