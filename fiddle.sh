#!/bin/bash

FIDDLEDIR=/tmp/
FIDDLE=$FIDDLEDIR`python -c "import random; print hex(int(str(random.random())[2:10]))[2:]"`
VIM=mvim

(set -e;
    mkdir $FIDDLE;
    cp template/* $FIDDLE;
    cd $FIDDLE;
    haml index.haml index.html;
    sass main.scss main.css;

    $VIM -S fiddle.vim;
    python server.py
)
