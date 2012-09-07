#!/bin/bash

# MongoDB
export MONGO_HOME=$DEV_HOME/software/mongodb-osx-x86_64-1.8.1

# Path
export PATH=$PATH:$MONGO_HOME/bin

# Aliases
alias workon="source workon.sh"
alias mongo="source mongo.sh"
alias mongod="source mongod.sh"
alias couchdb="source couchdb.sh"
alias eclipse="source eclipse.sh"
alias projects="source projects.sh"

cd $DEV_HOME