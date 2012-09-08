#!/bin/bash

source $DEV_BIN_HOME/util.sh

if [[ $1 == "" ]] ; then
    cd $DEV_HOME
elif [[ $1 == "projects" ]] ; then
    cd $DEV_HOME/projects
elif [[ $1 == "software" ]] ; then
    cd $DEV_HOME/software
elif [[ $1 == "project" ]] ; then
    if ! inProject ; then return 1; fi
    cd $DEV_PROJECT_HOME
elif [[ $1 == "code" ]] ; then
    if ! inProject ; then return 1; fi
    cd $DEV_PROJECT_HOME/code
fi

