About
=====
Inofficial LaTeX template for PhD theses at the University of Stuttgart, Germany.

Features
========
* UTF8 files
* output format is A5
* title page
* nice chapter headings
* important LaTeX packages are enabled
* tex4ht conversion enabled by "make html"

Usage
=====
* `thesis-example.tex` is the main document

Using with your git repository
==============================

Initialization
--------------
This howto assumes that you have not a git repository for your thesis.
If you have, just add https://github.com/latextemplates/uni-stuttgart-dissertation-template.git as upstream and merge the branch "template" into your "master" branch.

1. Open command line
1. git clone https://github.com/latextemplates/uni-stuttgart-dissertation-template.git
1. cd USTUTT-phd-thesis-template
1. git remote rename origin github
1. git checkout -b master

Now, you are on the master branch, where you can write your thesis and push it to your (remote) origin repository, in case you have one.

Merging updates from the template
---------------------------------
If you want to merge updates from github, do the following:

1. git fetch github
1. git merge github/template

See also
========
https://github.com/latextemplates/uni-stuttgart-computer-science-template is a LaTeX template for Master, Bachelor, Diploma, and Student Theses at the University of Stuttgart, Computer Science.
It has some more LaTeX packages included.
