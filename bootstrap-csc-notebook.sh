#!/bin/sh                                                                                                                           
                                                                                                                                    
cd /home/jovyan/work                                                                                                                
git config --global user.email "anon@localhost" 
git config --global user.name "anonymous"
if [ ! -d dhintro/.git ]
then
    git clone https://github.com/jiemakel/dhintro.git
else
    cd dhintro
    git stash
    git pull https://github.com/jiemakel/dhintro.git
    git checkout stash -- .
fi
mkdir -p ~/.jupyter/custom/                                                                                                         
wget https://raw.githubusercontent.com/csc-training/python-introduction/gh-pages/assets/custom.js -O ~/.jupyter/custom/custom.js    
Rscript -e 'install.packages(c("tm","SnowballC","wordcloud","slam"),repos="https://cloud.r-project.org/")' &
curl -sL https://raw.githubusercontent.com/alexarchambault/jupyter-scala/master/jupyter-scala | bash &

rm -f `basename "$0"`

