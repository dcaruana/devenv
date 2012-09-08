#!/bin/bash

if [[ $1 == "" ]] ; then
    echo Usage: workon project-name
    echo
elif [[ -d $DEV_HOME/projects/$1 ]] ; then
    echo Project $1 already exists
else
    mkdir $DEV_HOME/projects/$1
    mkdir $DEV_HOME/projects/$1/code
    cp -r $DEV_HOME/projects/devenv/code/devenv_template/ $DEV_HOME/projects/$1
    workon $1
fi