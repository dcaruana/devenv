#!/bin/bash

source $DEV_BIN_HOME/util.sh

if ! inProject ; then return 1; fi

unset DEV_PROJECT
unset DEV_PROJECT_HOME

initDevEnv
