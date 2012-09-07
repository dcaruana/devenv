#!/bin/bash

inProject ()
{
    if [[ $DEV_PROJECT == "" ]] ; then
        echo First select a project with workon [project]
        return 1
    fi
}