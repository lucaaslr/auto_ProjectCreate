#!/bin/bash

function create(){
    cd
    source /home/indtusuario/Documents/workspace/auto_ProjectCreate/.env
    python3 /home/indtusuario/Documents/workspace/auto_ProjectCreate/create.py $1
    cd $FILEPATH$1
    git init
    git remote add origin git@github.com:$USERNAME/$1.git
    touch README.md
    git add .
    git commit -m "Inital commit"
    git push -u origin master
    code .
}