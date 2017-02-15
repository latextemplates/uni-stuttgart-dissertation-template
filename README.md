# About
Unofficial LaTeX template for PhD theses at the University of Stuttgart, Germany.

# Features
* UTF-8 files
* output format is A5
* title page
* nice chapter headings
* important LaTeX packages are enabled
* [TeX4ht] conversion enabled by `make html`
* [biblatex]+[biber] instead of plain [bibtex]
* [latexmk]

# Prerequisite
* Windows: Recent [MiKTeX](http://miktex.org/)
* Mac OS X: Recent [TeX Live](https://www.tug.org/texlive/) (e.g. through [MacTeX](https://tug.org/mactex/)) - Try `sudo tlmgr update --all` if you encounter issues with biblatex
* Linux: Recent TeX Live distribution

# Usage
* `thesis-example.tex` is the main document
* `make` or `latexmk` for compilation
* `make clean` or `latexmk -C` for cleaning up

# Renaming the template

You probably don't want your document to be named `example`. In order to change this,
replace the term `thesis-example` by e. g. `thesis-musterfrau` in the following locations:

location | occurrence
---|---
cover-print/cover.tex | \includegraphics{../thesis-example.pdf}
.gitignore | thesis-example.pdf
.gitignore | thesis-example*.png
Makefile | MASTER_TEX = thesis-example.tex


# Using with your git repository


## Initialization
This howto assumes that you have not a git repository for your thesis.
If you have, just add https://github.com/latextemplates/uni-stuttgart-dissertation-template.git as upstream and merge the branch `template` into your `master` branch.

1. Open command line
1. `git clone https://github.com/latextemplates/uni-stuttgart-dissertation-template.git`
1. `cd uni-stuttgart-dissertation-template`
1. `git remote rename origin github`
1. `git checkout -b master`

Now, you are on the master branch, where you can write your thesis and push it to your (remote) origin repository, in case you have one.

## Merging updates from the template
If you want to merge updates from github, do the following:

1. `git fetch github`
1. `git merge github/template`

# See also
https://github.com/latextemplates/uni-stuttgart-computer-science-template is a LaTeX template for Master, Bachelor, Diploma, and Student Theses at the University of Stuttgart, Computer Science.
It has some more LaTeX packages included.

 [biber]: https://www.ctan.org/pkg/biber
 [biblatex]: http://tex.stackexchange.com/tags/biblatex/info
 [bibtex]: https://www.ctan.org/pkg/bibtex
 [latexmk]: http://tex.stackexchange.com/tags/latexmk/info
 [TeX4ht]: https://www.tug.org/tex4ht/
