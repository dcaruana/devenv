#!/bin/bash

source $DEV_BIN_HOME/util.sh

if ! inProject ; then return 1; fi

($DEV_HOME/software/eclipse/eclipse -data $DEV_PROJECT_HOME/workspace -showlocation 1>$DEV_HOME/software/eclipse/eclipse.out.log 2>$DEV_HOME/software/eclipse/eclipse.err.log &)
