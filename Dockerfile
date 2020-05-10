FROM openjdk:8-jre
MAINTAINER Ronan Munro

EXPOSE 25565

ENV PACK_VERSION=1.1.2
ENV MINECRAFT_HOME="/opt/minecraft"
ENV MINECRAFT_SRC="/usr/src/minecraft"

VOLUME ["/opt/minecraft"]
WORKDIR /opt/minecraft

RUN apt-get update && apt-get install -y wget vim

COPY entrypoint.sh /root/entrypoint.sh

CMD /root/entrypoint.sh