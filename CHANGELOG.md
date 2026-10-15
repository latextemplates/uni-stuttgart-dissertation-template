# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/).
Versioning is done using [Calendar Versioning](https://calver.org/).

## [2026-10-15]

### Added

- The LaTeX hints show how to color table rows and cells (`\rowcolor`, `\cellcolor`). [scientific-thesis-template#87](https://github.com/latextemplates/scientific-thesis-template/pull/87)
- `make log` shows the relevant messages of the LaTeX log (texlogsieve).

### Changed

- `make format` (and thus CI) indents all main files (`thesis-example*.tex`), not only `MASTER_TEX`.
- VS Code: the recommended extension is `james-yu.latex-workshop` (`manhen.latex-workshop-2` was removed from the stores).
- VS Code: the background of the PDF viewer follows the light or dark theme.
- Dependabot groups all GitHub Actions updates into one weekly PR.
- `check.yml` pins all GitHub Actions to commit SHAs.
- README.md: sections reordered.
- README.md: on Overleaf, select TeX Live 2026.
- README.md: passages in another language are an FAQ.
- README.md: links the decision records of the template generator.
- README.md: "Usage with docker" merged into "Docker-based (recommended)".
- Embedding the `.bib` file into the PDF is opt-in.
- `.latexmkrc` replaces `_latexmkrc`; it works on Overleaf, too.
- `make` runs the LaTeX tools in the Docker image (`make LOCAL=1` runs them locally).
- `vscode.settings.json` contains the Docker settings of LaTeX Workshop and does not build on save.
- README.md: compilation hints consolidated in "LaTeX compilation".
- minted compiles without `--shell-escape`.

### Fixed

- The README links the `figures/` directory, and `.dockerignore` excludes the generated `figures/*.pdf_tex` files. [generator-latex-template#586](https://github.com/latextemplates/generator-latex-template/pull/586)
- The list of abbreviations is generated when building with `latexmk`.
- The `.markdown.in` file of the markdown package is ignored by git and removed by `latexmk -c`.
- textlint ignores expl3 function names, Markdown reference IDs, and the name of the markdown package.
- German documents load only `autotype` (not additionally `selnolig`) for correct ligatures.
- `make view` opens the PDF on Linux and macOS.
- German documents configure `autotype` with `ligatures=selective` instead of the outdated `ligbreak`.
- `vscode.settings.json`: the recipes run `lualatex` (resp. `pdflatex`) with the right bibliography tool.

## [2026-10-14]

### Added

- The LaTeX hints show how to write text in Markdown using the [markdown](https://ctan.org/pkg/markdown) package - easing the start for LaTeX newcomers. The example is shown when compiling with LuaLaTeX; with pdfLaTeX, a hint is shown instead. The package's cache directory (`_markdown_*/`) is ignored by git. Markdown references such as `<#tbl:markdown>` typeset the type name and the number ("Table 1").
- The header of the main file states in which lines `\begin{document}` and the first heading are, so the content is found without scrolling through the long preamble.

### Changed

- The README uses the TeX Live image of the Island of TeX directly (also in the VS Code setting `latex-workshop.docker.image.latex`) - building an own image `ltg` is no longer needed. The commands to compile in the container are copy-and-paste ready for Windows (PowerShell and Command Prompt), Linux, and macOS.
- `docs/latex-setup.md` gives copy-and-paste ready docker commands for Windows (PowerShell and Command Prompt), Linux, and macOS.
- The how-to text references sections via `\Zcref` instead of a hardcoded `Section~\ref`.
- The README's tool hints distinguish a Docker-based setup (recommended) from a traditional installation: the [TeX Live image by the Island of TeX](https://gitlab.com/islandoftex/images/texlive) works the same on Windows, macOS, and Linux and makes `minted` work without a separate Python setup. The "Usage with docker" section and the VS Code hints (LaTeX Workshop can compile in the container) are linked from there.
- `docs/latex-setup.md` is structured the same way: "Docker-based (recommended)" with the Docker installation, the command line, and the TeXstudio commands for all operating systems, and "Traditional" with the former Ubuntu and Windows hints.
- The quick start notes that the font and `latexminted` steps are not needed with the Docker-based setup.

## [2026-10-08]

### Added

- The `Check` workflow has a `textlint` job that reports weakening words (e.g., "clearly", "just") in the English `.tex` files as annotations, without failing the build ("only" is allowed). Configure it in `.textlintrc.json`; the README shows how to run it locally.
- [`docs/thesis-checklist.md`](docs/thesis-checklist.md): a checklist to work through before handing in your thesis, linked from the README and the writing hints.
- The README and the writing hints recommend the open-access book [Student Thesis Projects](https://vdf.ch/product/student-thesis-projects-en.html), and the writing hints explain how to write both for readers who read from beginning to end and for readers who open the thesis anywhere.
- The figure examples show how to include a JPEG photo (`figures/ulm-minster.jpg`, CC0 from Wikimedia Commons).
- The listings example shows a listing spanning multiple pages: use a non-floating listing for long code, because floating listings cannot break across pages.

### Changed

- Cross-references use [zref-clever](https://ctan.org/pkg/zref-clever) instead of [cleveref](https://ctan.org/pkg/cleveref), because zref-clever works with tagged (accessible) PDFs: write `\zcref{...}` instead of `\cref` and, at the start of a sentence, `\Zcref{...}` (short for `\zcref[S]{...}`) instead of `\Cref`. Page-aware references use `\zvref` ([zref-vario](https://ctan.org/pkg/zref-vario)) instead of `\vref`.
- `_latexmkrc` is organized in sections and lists commented-out alternatives for continuous preview (`-pvc`), the job name, and the PDF viewer (e.g., evince).
- The example texts and the writing hints (abstract guide, chapter-structure hints) avoid words that textlint's `write-good` rule flags (`rarely`, `a few`, `several`, `usually`, `various`, `likely`), so a fresh thesis has no textlint annotations. A sentence-initial `Finally,` is allowed in `.textlintrc.json`, because it marks a sequence rather than weakening a statement.
- The paragraph example links Andrew Stacey's *Document Revision System* by title with the URL in a footnote, and the hyphenation example shows the short `\verb` snippets `\allowbreak{}` and `"=` instead of whole words, so that neither runs out of a narrow column.

### Fixed

- Long code lines without spaces (e.g., `\includegraphics[width=.4\linewidth]{example-image-a}`) in the "Corresponding LaTeX code" boxes of the `listings` variant are wrapped instead of running out of the box.
- Fixed typos in the example and writing-hint texts.
- `latexmk -pv` opens the PDF on Linux and macOS: the SumatraPDF viewer is only configured on Windows.

## [2026-07-30]

### Added

- The README now links the [latex-snippets site](https://latextemplates.github.io/latex-snippets/) near the top, so you can inspect the source snippets this template is assembled from.
- Soft-wrapped lines in code listings now show a gray hook arrow (↪) at the start of each continuation line, so they are distinguishable from real line breaks; the arrow is not copied when you select the code from the PDF.
- The compiled PDF now embeds `bibliography.bib`, so the reference data can be extracted from the PDF (e.g., with JabRef).

## [2026-06-30]

### Added

- Inline acronym typesetting with `\initialism` (and the ready-made `\OMG`, `\BPEL`, `\BPMN`, `\UML`) — a lightweight alternative to the glossary (`\gls`) for acronyms you do not want in the list of abbreviations. It now works (the required `lccaps` package is loaded) and is demonstrated by a new example in the "LaTeX Hints" chapter.

### Fixed

- The generated German aspell dictionary (`.aspell.de.pws`) is now tagged as language `de` (was `en`), fixing the CI spell-check for the German thesis.

## [2026-06-25]

### Added

- New example sections in the "LaTeX Hints" chapter: Formulas and Equations, Figures with TikZ, Plots with pgfplots, tables spanning multiple pages (`longtable`), and an optional UML diagram example (`tikz-uml` or PlantUML).
- Instructions for using VS Code with the LaTeX Workshop extension.

### Changed

- Typesetting improvements: widow/orphan control, top-aligned floats on float-only pages, and more table row spacing.

## [2025-04-11]

### Added

- Added support to use `lualatex-dev`.
- Added more words to personal aspell dictionary.
- Added `.aspell.de.pws` for German documents.
- Added support for TeXLive 2025.

### Fixed

- Fixed utf-8 marking in generated `.aspell-en.pws`.

## Removed

- Removed support for TeXLive 2023.

## [2025-03-04]

### Changed

- Updated [zauguin/install-texlive](https://github.com/zauguin/install-texlive) to `v4`.

## [2025-02-12]

### Fixed

- `pdflatex` run works again if both lualatex and pdflatex are used.

## [2025-01-31]

### Added

- `commands.tex` now collects all LaTeX macros / commands for a better overview on available (custom) LaTeX commands.

### Changed

- Changed names of example files (no `-listings` part for English template).

### Fixed

- Fixed magic comment `!BIB program` for biblatex.
- Database mode for JabRef is now biblatex.
- Fixed path to `cover.tex` in `README.md`.

## [2025-01-25]

### Added

- Added [TeXcount](https://app.uio.no/ifi/texcount/index.html) to GitHub workflow summary.
- GitHub workflow job summary for `latexmk` generated using [texlogsieve](https://ctan.org/pkg/texlogsieve).

### Fixed

- Fixed links to example PDFs. [#23](https://github.com/latextemplates/uni-stuttgart-dissertation-template/issues/23)
- Fixed indent issues in German example document.

## [2025-01-23]

### Changed

- Major restructuring to support the [LaTeX Template Generator](https://github.com/latextemplates/generator-latex-template).
- Moved contents of `shared/template.tex` into `thesis-example.tex` for having a single `.tex` file.

### Fixed

- Year on the title page is derived from `\date{\today}`.

## 2022-06-04

### Added

- Example PDFs are generated using GitHub actions and published on GitHub pages
- `CHANGELOG.md`

### Changed

- Footnotes are now continuous throughout the document. [#24](https://github.com/latextemplates/uni-stuttgart-dissertation-template/issues/24)

### Fixed

- `Dockerfile` is now for TeXLive 2022

[Unreleased]: https://github.com/latextemplates/uni-stuttgart-dissertation-template/compare/2026-10-15...HEAD
[2026-10-15]: https://github.com/latextemplates/uni-stuttgart-dissertation-template/compare/2026-10-14...2026-10-15
[2026-10-14]: https://github.com/latextemplates/uni-stuttgart-dissertation-template/compare/2026-10-08...2026-10-14
[2026-10-08]: https://github.com/latextemplates/uni-stuttgart-dissertation-template/compare/2026-07-30...2026-10-08
[2026-07-30]: https://github.com/latextemplates/uni-stuttgart-dissertation-template/compare/2026-06-30...2026-07-30
[2026-06-30]: https://github.com/latextemplates/uni-stuttgart-dissertation-template/compare/2026-06-25...2026-06-30
[2026-06-25]: https://github.com/latextemplates/uni-stuttgart-dissertation-template/compare/2025-04-11...2026-06-25
[2025-04-11]: https://github.com/latextemplates/uni-stuttgart-dissertation-template/compare/2025-03-04...2025-04-11
[2025-03-04]: https://github.com/latextemplates/uni-stuttgart-dissertation-template/compare/2025-02-12...2025-03-04
[2025-02-12]: https://github.com/latextemplates/uni-stuttgart-dissertation-template/compare/2025-01-31...2025-02-12
[2025-01-31]: https://github.com/latextemplates/uni-stuttgart-dissertation-template/compare/2025-01-25...2025-01-31
[2025-01-25]: https://github.com/latextemplates/uni-stuttgart-dissertation-template/compare/2025-01-23...2025-01-25
[2025-01-23]: https://github.com/latextemplates/uni-stuttgart-dissertation-template/compare/2022-06-04...2025-01-23

<!-- markdownlint-disable-file MD013 MD024 CHANGELOG-RULE-003 -->
