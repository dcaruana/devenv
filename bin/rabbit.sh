#!/bin/bash

source $DEV_BIN_HOME/util.sh

if ! inProject ; then return 1; fi

if [[ $1 == "start" ]] ; then
  $RABBITMQ_HOME/sbin/rabbitmq-server -detached
elif [[ $1 == "stop" ]] ; then
  $RABBITMQ_HOME/sbin/rabbitmqctl stop
elif [[ $1 == "reset" ]] ; then
  $RABBITMQ_HOME/sbin/rabbitmqctl stop_app
  $RABBITMQ_HOME/sbin/rabbitmqctl reset
  $RABBITMQ_HOME/sbin/rabbitmqctl start_app
elif [[ $1 == "report" ]] ; then
  $RABBITMQ_HOME/sbin/rabbitmqctl report
elif [[ $1 == "queues" ]] ; then
  $RABBITMQ_HOME/sbin/rabbitmqctl list_queues
fi
