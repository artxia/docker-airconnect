FROM lsiobase/ubuntu:jammy

ENV ARCH_VAR=x86_64

# Add Supervisor
RUN apt-get update && apt-get install -y \
    supervisor \
    libssl3 \
    libssl-dev \
    unzip
COPY root/ /
