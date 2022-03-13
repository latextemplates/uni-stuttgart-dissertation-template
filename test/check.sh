#!/bin/bash
latexmk -pdf -pdflatex="pdflatex -interaction=nonstopmode | texlogsieve" thesis-example
ls -la
cd spine-print
pdflatex -interaction nonstopmode spine | texlogsieve
ls -la
cp spine.pdf ../
cd ../cover-print
pdflatex -interaction nonstopmode cover | texlogsieve
cp cover.pdf ../
