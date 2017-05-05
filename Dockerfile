FROM java:8-jre
MAINTAINER seb!

ARG jar

EXPOSE 8000
EXPOSE 49003/udp

WORKDIR ~
RUN curl -so x-plane-map.jar $jar

ENTRYPOINT java -jar x-plane-map.jar
