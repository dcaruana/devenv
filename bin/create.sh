#!/bin/bash

if [[ $1 == "" ]] ; then
    echo Usage: workon project-name
    echo
elif [[ -d $DEV_HOME/projects/$1 ]] ; then
    echo Project $1 already exists
else
    mkdir $DEV_HOME/projects/$1
    cp -r $DEV_HOME/projects/devenv/devenv_template/ $DEV_HOME/projects/$1
    workon $1
fi