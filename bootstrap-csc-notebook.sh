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
ln -sf /home/jovyan/ /home/jovyan/?
cd /home/jovyan && wget -c --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u152-b16/aa0333dd3019491ca4f6ddbe78cdb6d0/jre-8u152-linux-x64.tar.gz -O - | tar xz && export PATH=$PATH:/home/jovyan/jre1.8.0_152 && curl -sL https://raw.githubusercontent.com/alexarchambault/jupyter-scala/master/jupyter-scala | bash && cp /home/jovyan/work/dhintro/scala-kernel.json /home/jovyan/.local/share/jupyter/kernels/scala/kernel.json &
rm -f `basename "$0"`

