#!/bin/bash

# Aliases
alias create="source create.sh"
alias update="source update.sh"
alias workon="source workon.sh"
alias mongo="source mongo.sh"
alias mongod="source mongod.sh"
alias couchdb="source couchdb.sh"
alias eclipse="source eclipse.sh"
alias dev="source dev.sh"

# MongoDB
export MONGO_HOME=$DEV_HOME/software/mongodb-osx-x86_64-1.8.1

# Path
export PATH=$PATH:$MONGO_HOME/bin

# Enter the house
cd $DEV_HOME

# Change terminal title
echo -n -e "\033]0;Dev Env\007"
