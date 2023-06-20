FROM rocker/r-ubuntu:22.04

RUN apt-get update \
    && apt-get dist-upgrade -y \
    && apt-get install -y r-cran-anytime

COPY *.tar.gz install_pkg.R ./
RUN Rscript install_pkg.R
