# University of Stuttgart PhD Thesis Template

> Unofficial LaTeX template for PhD theses at the University of Stuttgart, Germany.

## Example PDFs

- Thesis 🇩🇪: [thesis-example.pdf](thesis-example.pdf)
- Thesis 🇺🇸: [thesis-example-listings-en.pdf](thesis-example-listings-en.pdf)
- Thesis (minted) 🇩🇪: [thesis-example-minted-de.pdf](thesis-example-minted-de.pdf)
- Thesis (minted) 🇺🇸: [thesis-example-example-minted-en.pdf](thesis-example-example-minted-en.pdf)
- Book cover: [cover.pdf](http://latextemplates.github.io/uni-stuttgart-dissertation-template/cover.pdf)
- Spine of the book cover: [spine.pdf](http://latextemplates.github.io/uni-stuttgart-dissertation-template/spine.pdf)

## Usage

- `thesis-example.tex` is the main document
- `make` or `latexmk` for compilation
- `make clean` or `latexmk -C` for cleaning up
- `make aspell` for interactive spell checking

To build the whole document, execute following command.
Note that this requires a working perl installation.

    latexmk thesis-example

To enable this, please move `_latexmkrc` to `latexmkrc`.

In case something goes wrong, you can instruct the LaTeX compiler to stop at the first error:

    lualatex thesis-example

## Benefits

Following features are enabled in this template:

- Output format is A5
- Title page
- Nice chapter headings
- Important LaTeX packages are enabled
- (Optional) Typesetting of listings using advanced highlighting powered by the [minted] package.
- Generated PDF allows for copy and paste of text without getting words with ligatures such as "workflow" destroyed.
  This is enabled by `glyphtounicode`, which encodes ligatures (such as fl) using unicode characters.
- Support of hyperlinked references without extra color thanx to [hyperref].
- Better breaking of long URLs.
- Support for `\powerset` command.
- Support todos as pdf annotations. This is enabled by the [pdfcomment] package.
- [microtypographic extensions](https://www.ctan.org/pkg/microtype) for a better look of the paper.
- Modern packages such as [microtype], [cleveref], [csquotes], [paralist], [hyperref], [hypcap], [upquote], [booktabs].
- LaTeX compilation using the modern lualatex compiler.
- [biblatex]+[biber] instead of plain [bibtex] to have a more intuitive `.bib` file.
- [latexmk] for easy compilation of the LaTeX document.
- Ready-to-go configuration for [latexindent].
- Proper hyphenation and microtype for English texts.
- Hints on writing an abstract and thesis by Dirk Fahland.

## Disabled features

Following features were not activated for this template.
You can run the [latex template generator] to enable the features.

Congratulations. You chose to use all available features.

## Tool hints

### Prerequisites

- Windows: Recent [MiKTeX](http://miktex.org/). MiKTeX installation hints are given at <http://latextemplates.github.io/scientific-thesis-template/#installation-hints-for-windows>.
- Mac OS X: Recent [TeX Live](https://www.tug.org/texlive/) (e.g. through [MacTeX](https://tug.org/mactex/)) - Try `sudo tlmgr update --all` if you encounter issues with biblatex
- Linux: Recent TeX Live distribution

### Usage of `minted`

To have minted running properly, you have to do following steps on Windows:

1. Install python: `choco install python` - that uses [chocolatey](https://chocolatey.org/) to install Python
2. Install [pygments]: `pip instal pygments` - that uses the Pyhton package manager to install the pygments library
3. When latexing, use `-shell-escape`: `pdflatex -shell-escape thesis-example`.
   You can also just execute `latexmk thesis-example`.

### Other hints

- Grammar and spell checking is available at [TeXstudio].
  Please download [LanguageTool] (Windows: `choco install languagetool`) and [configure TeXstudio to use it](http://wiki.languagetool.org/checking-la-tex-with-languagetool#toc4).
  Note that it is enough to point to `languagetool.jar`.
  **If TeXstudio doesn't fit your need, check [the list of all available LaTeX Editors](http://tex.stackexchange.com/questions/339/latex-editors-ides).**
- Use [JabRef] to manage your bibliography (Windows: `choco install jabref`).

## Usage with docker

The generated `Dockerfile` is based on the [Dockerfile by the Island of TeX](https://gitlab.com/islandoftex/images/texlive#tex-live-docker-image).

    docker run --rm -v "c:\users\example\latex-document:/workdir" ltg latexmk

Following one-time setup is required:

    docker build -t ltg .

## FAQs

### Q: How to rename `thesis-example.tex`?

You probably don't want your document to be named `example`. In order to change this,
replace the term `thesis-example` by e.g., `thesis-topic-name` in the following locations:

| location                | occurrence                                |
|-------------------------|-------------------------------------------|
| `cover-print/cover.tex` | `\includegraphics{../thesis-example.pdf}` |
| `.gitignore`            | `thesis-example.pdf`                      |
| `.gitignore`            | `thesis-example*.png`                     |
| `Makefile`              | `MASTER_TEX = thesis-example.tex`         |

### Q: I get the error `Reload initiated (formats: otf,ttf,ttc); reason: Font "Inconsolatazi4" not found.`

Install package `inconsolata`

### Q: How can I synchronize updates from the template to my repository?

1. Initialize your git repository as usual
2. Add this repository as upstream: `git remote add upstream https://github.com/latextemplates/{template}.git`
3. Merge the branch `upstream/main` into your `main` branch: `git merge upstream/main`.

After that you can use and push the `main` branch as usual.
Notes on syncing with the upstream repository [are available from GitHub](https://help.github.com/articles/syncing-a-fork/).

### Q: I get the error `! pdfTeX error (font expansion): auto expansion is only possible with scalable fonts.`

Install the `cm-super` package using the MiKTeX package manager. Then, run `initexmf --mkmaps` on the command line. (Long description: <https://tex.stackexchange.com/a/324972/9075>)

### Q: I get `Package csquotes Error: Unbalanced groups or invalid nesting.` What can I do?

A: You have activated `\MakeOuterQuote{"}` and used some special babel command to allow hyphenation at other places as a dash. One example is writing `application"=specific`.
Now, you have to decide whether you want keep using plain quotes to enquote a word or use the special hyphenation command.
In other words: Do you want `"quote"` and `app\-lication\-specific` or `\enquote{quote} and  application"=specific`?

Note that this should not happen when the template is generated as the setting `tweakouterquote` ensures that these two options are mutually exclusive.

### Q: I need more space. What can I do?

The most simple solution to get more space is to exchange the font.

### Q: How can I reformat my `.tex` files?

Execute following command:

    latexindent -l -s -sl -w thesis-example.tex

### Q: I want to obey the one-sentence-per-line rule. How can I do that?

Execute following command:

    latexindent -m -l -s -sl -w thesis-example.tex

Attention! This is work in progress and does not always produce best results.

### Q: Can I also write in German?

Yes. You can regenerate the template and choose "German" as language.

### Q: `ngerman-x-latest` is reported missing

Install the package `dehyph-exptl`.

### Q: I get ``! I can't find file `clmr28t10+20'.``

You seem to use `latexmk` locally.
Please move `_latexmkrc` to `latexmkrc` to get `latexmk` working.
If you don't do this, `latexmk` tries to execute `latex`, which tries to produce a DVI file (and not a PDF file).

## Further information

- Other templates: <https://latextemplates.github.io/>

[biber]: https://www.ctan.org/pkg/biber
[biblatex]: http://tex.stackexchange.com/tags/biblatex/info
[bibtex]: https://www.ctan.org/pkg/bibtex
[booktabs]: https://ctan.org/pkg/booktabs
[cleveref]: https://ctan.org/pkg/cleveref
[csquotes]: https://www.ctan.org/pkg/csquotes
[hypcap]: https://www.ctan.org/pkg/hypcap
[hyperref]: https://ctan.org/pkg/hyperref
[latexindent]: https://ctan.org/pkg/latexindent
[latexmk]: http://tex.stackexchange.com/tags/latexmk/info
[microtype]: https://ctan.org/pkg/microtype
[minted]: https://ctan.org/pkg/minted
[natbib]: https://ctan.org/pkg/natbib
[paralist]: https://www.ctan.org/pkg/paralist
[pdfcomment]: https://www.ctan.org/pkg/pdfcomment
[upquote]: https://www.ctan.org/pkg/upquote

[JabRef]: https://www.jabref.org
[LanguageTool]: https://languagetool.org/
[latex template generator]: https://www.npmjs.com/package/generator-latex-template
[pygments]: http://pygments.org/
[TeXstudio]: http://texstudio.sourceforge.net/

<!-- disable markdown-lint rules contradicting our writing of FAQs -->
<!-- markdownlint-disable-file MD001 MD013 MD026 -->
