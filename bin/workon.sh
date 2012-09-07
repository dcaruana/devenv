#!/bin/bash

if [[ $1 == "" ]] ; then
    echo Usage: workon project-name
    echo

    PROJECTS=`find $DEV_HOME/projects -mindepth 1 -maxdepth 1 \( -type d -o -type l \) -exec basename \{\} \; | sort`
    for PROJECT_NAME in $PROJECTS
    do
        echo - $PROJECT_NAME
    done
    echo
else
    if [[ ! -d $DEV_HOME/projects/$1 ]] ; then
        echo Project $1 does not exist
    else
        export DEV_PROJECT=$1
        export DEV_PROJECT_HOME=$DEV_HOME/projects/$1
        echo -n -e "\033]0;Project $DEV_PROJECT\007"
        cd $DEV_PROJECT_HOME
    fi
fi
