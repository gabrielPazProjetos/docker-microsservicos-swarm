#!/bin/bash
docker swarm init
docker service create --name app --replicas 3 -p 8080:80 php:7.4-apache
docker service create --name mysql \
  --env MYSQL_ROOT_PASSWORD=senha123 \
  --env MYSQL_DATABASE=meubanco \
  --env MYSQL_USER=joao \
  --env MYSQL_PASSWORD=senha123 \
  mysql:5.7
docker service create --name nginx --replicas 2 -p 4500:4500 nginx
