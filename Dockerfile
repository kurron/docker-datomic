FROM kurron/docker-oracle-jdk-8:latest

MAINTAINER Ron Kurr <kurr@kurron.org>

LABEL org.kurron.name="Docker" org.kurron.version=0.9.5350

ENV DEBIAN_FRONTEND noninteractive
ENV VERSION 0.9.5350

RUN apt-get update && \
    apt-get install -y wget unzip && \
    apt-get autoremove -y && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    wget --http-user=kurr@kurron.org \
         --http-password=4eeb112b-8bf8-4bbc-ae29-88b7b7d20162 \
         https://my.datomic.com/repo/com/datomic/datomic-pro/$VERSION/datomic-pro-$VERSION.zip -O /tmp/datomic-pro-$VERSION.zip && \
    unzip -d /opt /tmp/datomic-pro-$VERSION.zip && \
    rm -rf /tmp/*
    

ENV HOME /home/developer

VOLUME ["/home/developer"]
VOLUME ["/pwd"]


WORKDIR /pwd
#ENTRYPOINT ["/usr/local/bin/ecs-cli"]
#CMD ["--version"]
