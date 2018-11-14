# Absolute fundamental concepts of programming for humanists

[![Binder](https://mybinder.org/badge.svg)](https://mybinder.org/v2/gh/jiemakel/dhintro/master) [![License: CC BY 4.0](https://img.shields.io/badge/License-CC%20BY%204.0-lightgrey.svg)](https://creativecommons.org/licenses/by/4.0/)

This repository is an attempt to distil the **absolute minimum understanding** needed for someone from a humanities background to start delving into programming by reading and dissecting ready-made examples that abound on the Internet.

Being the absolute minimum, it is much, much shorter than most introductory programming courses for the humanities. Indeed, instead of teaching programming, it endeavours to only transfer knowledge of the absolute core **fundamental concepts of programming**. By focusing intently on this core set \(and providing a [cheatsheet](http://nbviewer.jupyter.org/github/jiemakel/dhintro/blob/master/programming_cheatsheet.ipynb) of them\), it is hoped that the reader is better able to relate the concepts to each other, and form a unified general understanding of the constructs appearing in all programs.

The core idea behind this is that nowadays, for everything in data processing or visualisation one wants to do, there is a library \(e.g. [Pandas](http://pandas.pydata.org/), [Tidyverse](https://www.tidyverse.org/packages/), [Mallet](http://mallet.cs.umass.edu/), [LDAvis](https://cran.r-project.org/web/packages/LDAvis/README.html), [Matplotlib](http://matplotlib.org/), [Requests](http://docs.python-requests.org/en/latest/), [tm](https://cran.r-project.org/web/packages/tm/index.html), [plotly](https://plot.ly/)\). So, nowadays, programming is mostly reading up how on to use these libraries from their documentation, and writing glue code to hook them together to perform what one wants. To drive this point home, consider the two programs linked [here](http://nbviewer.jupyter.org/github/jiemakel/dhintro/blob/master/modern_programming.ipynb). The first prints some statements, the second imports a bunch of libraries, and then uses them to 1\) fetch the text of Pride and Prejudice from the Internet, 2\) to apply statistical topic modeling to it and 3\) to interactively visualise the results in a similar amount of lines.

Gluing the libraries together to a working pipeline is mostly done through trial and error, and lots of googling. However, in order to be able to read and understand the documentation and examples, knowledge of the fundamental universal structures and concepts of programming is required. 

Many other programming courses for the humanities start with installing a local version of a programming language, and possibly also an editor environment. The reasoning behind this is usually that this is the way actual programmers program, and thus it is useful to familiarise people with the proper environment right off the bat. However, doing so also introduces a lot of extraneous complexity. 

Thus, this repository instead makes use of [Jupyter](http://jupyter.org/) notebooks as the programming environment of choice. Jupyter notebooks are interactive notebooks that mix textual and code cells in an interactive manner, which is great for introducing and experimenting with programming concepts in bite-sized chunks \(funnily enough, they also exhibit many of the qualities desired in [this article](https://hyp.is/Ap-aFs08EeinplOX3_QUrQ/link.springer.com/content/pdf/10.1007/BF02402344.pdf) from 1974 of an environment for teaching programming in the humanities. In addition, they also happen to be useful building blocks for [literate programming](https://en.wikipedia.org/wiki/Literate_programming) and [reproducible research](https://ropensci.org/blog/2014/06/09/reproducibility/), both important concepts in themselves for data scientists\). 

While Jupyter tools can be installed locally, the Jupyter ecosystem also has the advantage of being able to provide readily configured temporary environments straight on the web. An environment configured for this repository can be started merely by going to [https://mybinder.org/v2/gh/jiemakel/dhintro/master](https://mybinder.org/v2/gh/jiemakel/dhintro/master) \(and waiting a bit for it to load\).

Another reason for favouring a ready environment is that to further force focus onto the conceptual level, the concepts are taught concurrently in multiple programming languages. This way, one better learns the concepts, instead of just the peculiarities of their implementation in a specific language.

To start with, two notebooks describe the core concepts in the two programming languages currently most relevant to data science: [Python](http://python.org/) and [R](https://www.r-project.org/). The [python\_intro.ipynb](https://mybinder.org/v2/gh/jiemakel/dhintro/master?filepath=python_intro.ipynb) and [r\_intro.ipynb](https://mybinder.org/v2/gh/jiemakel/dhintro/master?filepath=r_intro.ipynb) notebooks are intended to be viewed and progressed through side by side, section by section in two browser windows. After going through the concepts this way, open up the final [Scala](https://www.scala-lang.org/) language [version](https://mybinder.org/v2/gh/jiemakel/dhintro/master?filepath=scala_intro.ipynb) of the fundamentals, and go through it once more comparing it to the earlier two languages.

After these introductory notebooks, the reader is advised to move on to [korp.ipynb](https://mybinder.org/v2/gh/jiemakel/dhintro/master?filepath=korp.ipynb), which contains an actual, relatively simple process where data is sourced, transformed and then visualised. This notebook also contains three simple tasks for the reader that are typical of what one will encounter when doing similar processing on one's own \(when doing this and later exercises, do note that the Jupyter environments on Binder are temporary, so if you need to return to the exercise later, you'll need to download the notebook for safekeeping after work, and then upload it back when you want to resume\).

Other notebooks of interest include [shakespeare.ipynb](https://mybinder.org/v2/gh/jiemakel/dhintro/master?filepath=shakespeare.ipynb) as well as the [reference cheatsheet](https://mybinder.org/v2/gh/jiemakel/dhintro/master?filepath=programming_cheatsheet.ipynb) to serve as a memory aid on the core concepts learned. A final notebook is [python\_figure\_out.ipynb](https://mybinder.org/v2/gh/jiemakel/dhintro/master?filepath=python_figure_out.ipynb), where the exercise is to figure out what is actually going on in the program using the instructions given in the reference cheatsheet.

### What is left out

The fundamentals described here leave out things very important to programming in general. The most important of these is how to design and organise code into conceptually clear, modular and reusable units such as classes, packages and libraries. The reason this is left out is that while they are of the utmost importance when designing large, long-lived, multipurpose code, such considerations are of much lesser import for the kind of one-off glue code that a data scientist of digital humanities scholar usually needs. You will also passively learn proper organisation practices by reading the documentation of quality libraries, and by going through other peoples code.

### What to do

1. Work through the [python\_intro.ipynb](https://mybinder.org/v2/gh/jiemakel/dhintro/master?filepath=python_intro.ipynb) and [r\_intro.ipynb](https://mybinder.org/v2/gh/jiemakel/dhintro/master?filepath=r_intro.ipynb) notebooks
2. Compare the previous notebooks with [scala\_intro.ipynb](https://mybinder.org/v2/gh/jiemakel/dhintro/master?filepath=scala_intro.ipynb). There are **three** large conceptual level differences in the design of Scala in comparison to R and Python. Which are they? Post answers as private messages to Eetu on Slack.
3. Go through the exercise in [korp.ipynb](https://mybinder.org/v2/gh/jiemakel/dhintro/master?filepath=korp.ipynb)
4. Figure out what exactly [this code](https://mybinder.org/v2/gh/jiemakel/dhintro/master?filepath=python_figure_out.ipynb) does and how it does it. 

### Licensing

This repository is licensed under a [Creative Commons Attribution 4.0 International License](http://creativecommons.org/licenses/by/4.0/). This means that you are free to use, embed, remix and further develop it for use in your own course or other material. The only requirement is that you give appropriate credit for this material, provide a link to the license, and indicate if changes were made (see the [license](https://creativecommons.org/licenses/by/4.0/) for more details). 

If you do make use of this material, I'd naturally also appreciate a ping, as well as the possibility to merge any improvements to this version, even if neither of those is actually required by the license.

(This repository is a part of the [Introduction to methods for digital humanities](http://jiemakel.gitbook.io/meth4dh) course, which carries the same license as a whole) 

[![Creative Commons Attribution 4.0 International License](https://i.creativecommons.org/l/by/4.0/88x31.png)](http://creativecommons.org/licenses/by/4.0/)

