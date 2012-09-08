#!/bin/bash

source $DEV_BIN_HOME/util.sh

if ! inProject ; then return 1; fi

sudo couchdb -b -o $DEV_PROJECT_HOME/data/log/couchdb.out.log -e $DEV_PROJECT_HOME/data/log/couchdb.err.log
