FROM ubuntu:20.04

RUN apt update -yq && apt install -y --no-install-recommends \
        ca-certificates \
        wget \
        unzip
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
RUN mkdir -p /data
WORKDIR /data

ENTRYPOINT [ "/entrypoint.sh" ]
