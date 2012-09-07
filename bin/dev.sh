#!/bin/bash

if [[ $1 == "" ]] ; then
    cd $DEV_HOME
elif [[ $1 == "projects" ]] ; then
    cd $DEV_HOME/projects
elif [[ $1 == "software" ]] ; then
    cd $DEV_HOME/software
elif [[ $1 == "project" ]] ; then
    cd $DEV_PROJECT_HOME
fi

