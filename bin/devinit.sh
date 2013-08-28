#!/bin/bash

source $DEV_BIN_HOME/util.sh

# Aliases
alias create="source create.sh"
alias update="source update.sh"
alias workon="source workon.sh"
alias nowork="source nowork.sh"
alias mongo="source mongo.sh"
alias mongod="source mongod.sh"
alias couchdb="source couchdb.sh"
alias rabbit="source rabbit.sh"
alias eclipse="source eclipse.sh"
alias dev="source dev.sh"

# MySQL
export MYSQL_HOME=/usr/local/mysql

# Java
export JAVA_HOME=`/usr/libexec/java_home -v 1.7`

# MongoDB
export MONGO_HOME=$DEV_HOME/software/mongodb-osx-x86_64-2.4.1

# RabbitMQ
export RABBITMQ_HOME=$DEV_HOME/software/rabbitmq_server-3.0.4

# Datomic
export DATOMIC_HOME=$DEV_HOME/software/datomic-free-0.8.3789

# Play Framework
export PLAY_HOME=$DEV_HOME/software/play-2.1.0

# ImageMagick
export IMAGEMAGICK_HOME=$DEV_HOME/software/ImageMagick

# Path
export PATH=$PATH:$PLAY_HOME:$MONGO_HOME/bin:$MYSQL_HOME/bin:$IMAGEMAGICK_HOME/bin

initDevEnv
