FROM rocker/r-ubuntu:22.04

RUN apt-get update \
    && apt-get dist-upgrade -y \
    && apt-get install -y \
        default-jdk git apt-transport-https gpg-agent openssh-server \
        unixodbc unixodbc-dev libaio1 libaio-dev curl netbase \
        r-cran-anytime r-cran-cli r-cran-data.table r-cran-dbi r-cran-dplyr \
        r-cran-fontawesome
    && apt-get autoremove -y \
    && apt-get autoclean -y