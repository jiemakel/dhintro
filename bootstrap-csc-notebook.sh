#!/bin/sh                                                                                                                           
                                                                                                                                    
cd /home/jovyan/work                                                                                                                
export GIT_COMMITTER_NAME=anonymous                                                                                                 
export GIT_COMMITTER_EMAIL=anon@localhost                                                                                           
git clone https://github.com/jiemakel/dhintro.git
                                                                                                                                    
mkdir -p ~/.jupyter/custom/                                                                                                         
wget https://raw.githubusercontent.com/csc-training/python-introduction/gh-pages/assets/custom.js -O ~/.jupyter/custom/custom.js    
Rscript -e 'install.packages(c("tm","SnowballC","wordcloud","slam"),repos="https://cloud.r-project.org/")' &

rm -f `basename "$0"`

