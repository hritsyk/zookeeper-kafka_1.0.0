#!/usr/bin/env bash

sed -i 's/PORT/'"$PORT"'/' /kafka/config/zookeeper.properties

exec kafka/bin/zookeeper-server-start.sh kafka/config/zookeeper.properties