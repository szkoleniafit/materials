#!/bin/bash

start(){
  x=0
  echo "" > /tmp/timer.log
  while [ $x -le 60 ]; do
    sleep 1
    x=$((x+1))
    echo $x >> /tmp/timer.log
  done
}

stop(){
  pid=$(cat /tmp/couter.pid)
  kill $pid
  exit 0
}

case "$1" in
  start)
    start &
    echo $! > /tmp/couter.pid
    ;;
  stop)
    stop
    ;;
  *)
    exit 1
  ;;
esac
