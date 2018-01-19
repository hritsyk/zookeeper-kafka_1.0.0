FROM alpine

MAINTAINER Igor Grytsyk "gritsyk@gmail.com"

ENV JAVA_OPTS="-Xms1024M -Xmx2048M"
ENV DATA_DIR=/tmp/zookeeper

RUN apk add --no-cache \
        bash \
        bash-completion \
        openjdk8-jre-base

COPY kafka /kafka

EXPOSE 2181

ENTRYPOINT ["kafka/bin/zookeeper-server-start.sh", "kafka/config/zookeeper.properties"]