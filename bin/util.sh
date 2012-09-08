#!/bin/bash

initDevEnv()
{
    cd $DEV_HOME/projects
    echo -n -e "\033]0;Dev Env\007"
}

inProject ()
{
    if [[ $DEV_PROJECT == "" ]] ; then
        echo First select a project with workon [project]
        return 1
    fi
}