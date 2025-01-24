# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](http://keepachangelog.com/).
Versioning is done using [Calendar Versioning](https://calver.org/).

## [2025-01-24]

### Fixed

- Fixed links to example PDFs. [#23](https://github.com/latextemplates/uni-stuttgart-dissertation-template/issues/23)
- Fixed indent issues in German example document.

### Added

- Added [TeXcount](https://app.uio.no/ifi/texcount/index.html) to GitHub workflow.
- GitHub workflow job summary for `latexmk` generated using [texlogsieve](https://ctan.org/pkg/texlogsieve).

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

[2025-01-24]: https://github.com/latextemplates/uni-stuttgart-dissertation-template/compare/2025-01-23...2025-01-24
[2025-01-23]: https://github.com/latextemplates/uni-stuttgart-dissertation-template/compare/2022-06-04...2025-01-23

<!-- markdownlint-disable-file MD013 MD024 CHANGELOG-RULE-003 -->
