#!/bin/bash
set -e

echo "Criando topicos do kafka..."
bash -c "/opt/kafka/bin/kafka-topics.sh --create --zookeeper zookeeper:2181 --replication-factor 1 --partitions 1 --topic execution"