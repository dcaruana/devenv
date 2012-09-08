#!/bin/bash

source $DEV_BIN_HOME/util.sh

if ! inProject ; then return 1; fi

cp -r $DEV_HOME/projects/devenv/code/devenv_template/ $DEV_PROJECT_HOME
