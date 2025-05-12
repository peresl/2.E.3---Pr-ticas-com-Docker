#!/bin/bash

case "$1" in
  start)
    docker pull nginx
    docker run -d --name meu-servidor nginx
    ;;
  list)
    docker ps
    ;;
  stop)
    docker stop meu-servidor
    docker rm meu-servidor
    ;;
  all)
    docker ps -a
    ;;
  *)
    echo "Uso: $0 {start|list|stop|all}"
    ;;
esac
