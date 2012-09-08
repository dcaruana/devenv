#!/bin/bash

source $DEV_BIN_HOME/util.sh

if ! inProject ; then return 1; fi

#$MONGO_HOME/mongod --dbpath=$DEV_PROJECT_HOME/data/db --rest --fork --logpath=$DEV_PROJECT_HOME/data/log/mongod.log
$MONGO_HOME/bin/mongo mongod --journal --dbpath=$DEV_PROJECT_HOME/data/db --rest --fork --logpath=$DEV_PROJECT_HOME/data/log/mongod.log