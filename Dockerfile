FROM alpine

MAINTAINER Igor Grytsyk "gritsyk@gmail.com"

ENV JAVA_OPTS "-Xms1024M -Xmx2048M"
ENV PORT 2181

RUN apk add --no-cache \
        bash \
        bash-completion \
        openjdk8-jre-base

COPY kafka /kafka

EXPOSE $PORT

ADD entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]