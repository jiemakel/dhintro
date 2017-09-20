#!/bin/sh

cd /home/jovyan
export GIT_COMMITTER_NAME=anonymous
export GIT_COMMITTER_EMAIL=anon@localhost
git clone https://github.com/jiemakel/dhintro.git work

mkdir -p ~/.jupyter/custom/
wget https://raw.githubusercontent.com/csc-training/python-introduction/gh-pages/assets/custom.js -O ~/.jupyter/custom/custom.js

