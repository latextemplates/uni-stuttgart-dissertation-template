# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](http://keepachangelog.com/).
Versioning is done using [Calendar Versioning](https://calver.org/).

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

[2025-04-11]: https://github.com/latextemplates/uni-stuttgart-dissertation-template/compare/2025-03-04...2025-04-11
[2025-03-04]: https://github.com/latextemplates/uni-stuttgart-dissertation-template/compare/2025-02-12...2025-03-04
[2025-02-12]: https://github.com/latextemplates/uni-stuttgart-dissertation-template/compare/2025-01-31...2025-02-12
[2025-01-31]: https://github.com/latextemplates/uni-stuttgart-dissertation-template/compare/2025-01-25...2025-01-31
[2025-01-25]: https://github.com/latextemplates/uni-stuttgart-dissertation-template/compare/2025-01-23...2025-01-25
[2025-01-23]: https://github.com/latextemplates/uni-stuttgart-dissertation-template/compare/2022-06-04...2025-01-23

<!-- markdownlint-disable-file MD013 MD024 CHANGELOG-RULE-003 -->
