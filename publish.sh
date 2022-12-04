#!/bin/bash
#
#this script moves a markdown file to bashyll/posts/ directory and then publishes them
#usage $blog <path-to-file.md> 


if [ -e $1 ]
then
        cp $1 $HOME/gitlab/bashyll/posts/
        $HOME/gitlab/bashyll/./$2 $HOME/gitlab/bashyll/posts/$(basename $1)
        echo "$1 $2ed "
else
    echo " $1 missing file or directory "
fi
