---
lang: en-US # tell LTeX to spell check the file using en-US
---

# University of Stuttgart PhD Thesis Template

> Unofficial LaTeX template for PhD theses at the University of Stuttgart, Germany.

For a template for master, bachelor and other thesis, please head to the [scientific thesis template](https://github.com/latextemplates/scientific-thesis-template).

## Features

* UTF-8 files
* output format is A5
* title page
* nice chapter headings
* important LaTeX packages are enabled
* [TeX4ht] conversion enabled by `make html`
* [biblatex]+[biber] instead of plain [bibtex]
* [latexmk]

## Prerequisites

* Windows: Recent [MiKTeX](http://miktex.org/)
* Mac OS X: Recent [TeX Live](https://www.tug.org/texlive/) (e.g. through [MacTeX](https://tug.org/mactex/)) - Try `sudo tlmgr update --all` if you encounter issues with biblatex
* Linux: Recent TeX Live distribution

## Usage

* `thesis-example.tex` is the main document
* `make` or `latexmk` for compilation
* `make clean` or `latexmk -C` for cleaning up

## Renaming the template

You probably don't want your document to be named `example`. In order to change this,
replace the term `thesis-example` by e. g. `thesis-musterfrau` in the following locations:

location | occurrence
---|---
cover-print/cover.tex | \includegraphics{../thesis-example.pdf}
.gitignore | thesis-example.pdf
.gitignore | thesis-example*.png
Makefile | MASTER_TEX = thesis-example.tex

# VSCode configuration

To use the setup in VSCode, install

* [LaTeX Workshop](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop) to support LaTeX in VSCode and
* [LTeX](https://marketplace.visualstudio.com/items?itemName=valentjn.vscode-ltex) to have a nice spell cheker that also identifies grammar issues

Then, change the setting of LaTeX Workshop to use biber.
Therefore, update the following lines in the VSCode `settings.json` to contain:

```json
    "latex-workshop.latex.recipes": [
        {
            "name": "pdflatex ➞ bibtex ➞ pdflatex × 2 🔃",
            "tools": [
                "pdflatex",
                "bibtex",
                "pdflatex",
                "pdflatex"
            ]
        },
    ],
    "latex-workshop.latex.tools": [
        ...
        {
            "name": "bibtex",
            "command": "biber", # make sure this is not bibtex!
            "args": [
                "%DOCFILE%"
            ],
            "env": {}
        },
        ...
    ],
```

The following settings are additionally recommended:

```json
{
    "editor.wordWrap": "on",                              # enable soft line breaks
    "latex-workshop.view.pdf.viewer": "tab",              # display the generaded PDF in a separate tab
    "latex-workshop.view.pdf.backgroundColor": "#cccccc", # use a darker background in de PDF viewer to 
                                                            lift of the pages from it
    "latex-workshop.latex.autoBuild.run": "onSave",       # automatically build on saving .tex files
    "editor.renderWhitespace": "all",                     # display all whitespaces
}
```

Alternatively, just copy and paste the contents of the [vscode.settings.json](./vscode.settings.json) file to your VSCode settings file.

### LTeX tips and tricks

[LTeX](https://marketplace.visualstudio.com/items?itemName=valentjn.vscode-ltex) is an offline grammar and spell checker with support for LaTeX and Markdown.

Add a magic comment to your files to tell LTeX which language to use:

```latex
% LTeX: language=de-DE
```

If you want to use different langauges in the text, use the `\foreignlanguage{language}{text}}` command.
LTeX will detect these elements and automatically switch the spell checker's lanaguge.
For example:

```latex
\foreignlanguage{english}{Therefore, our proposed approach is the best in the world.}
```

## Using with your git repository

### Initialization

This howto assumes that you have not a git repository for your thesis.
If you have, just add https://github.com/latextemplates/uni-stuttgart-dissertation-template.git as upstream and merge the branch `template` into your `main` branch.

1. Open command line
1. `git clone https://github.com/latextemplates/uni-stuttgart-dissertation-template.git`
1. `cd uni-stuttgart-dissertation-template`
1. `git remote rename origin github`
1. `git checkout -b main`

Now, you are on the `main` branch, where you can write your thesis and push it to your (remote) origin repository, in case you have one.

### Merging updates from the template

If you want to merge updates from github, do the following:

1. `git fetch github`
1. `git merge github/template`

## See also

<https://github.com/latextemplates/uni-stuttgart-computer-science-template> is a LaTeX template for Master, Bachelor, Diploma, and Student Theses at the University of Stuttgart, Computer Science.
It has some more LaTeX packages included.

[biber]: https://www.ctan.org/pkg/biber
[biblatex]: http://tex.stackexchange.com/tags/biblatex/info
[bibtex]: https://www.ctan.org/pkg/bibtex
[latexmk]: http://tex.stackexchange.com/tags/latexmk/info
[TeX4ht]: https://www.tug.org/tex4ht/
