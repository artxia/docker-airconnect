FROM lsiobase/ubuntu:jammy

# Pulling TARGET_ARCH from build arguments and setting ENV variable
ARG TARGETARCH
ENV ARCH_VAR=$TARGETARCH

# Add Supervisor
RUN apt-get update && apt-get install -y \
    supervisor \
    libssl3 \
    libssl-dev \
    unzip
COPY root/ /
