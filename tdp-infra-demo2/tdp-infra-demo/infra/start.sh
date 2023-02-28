#!/bin/bash

# Build the base images from which are based the Dockerfiles
# then Startup all the containers at once 
sudo docker build -t hadoop-base docker/hadoop/hadoop-base && \
sudo docker build -t hive-base docker/hive/hive-base && \
sudo docker build -t spark-base docker/spark/spark-base && \
sudo docker compose up --build -d
