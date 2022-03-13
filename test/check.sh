#!/bin/bash
latexmk -pdf -pdflatex="pdflatex -interaction=nonstopmode | texlogsieve" thesis-example
cd spine-print
pdflatex -interaction nonstopmode spine | texlogsieve
cp spine.pdf ../
cd ../cover-print
pdflatex -interaction nonstopmode cover | texlogsieve
cp cover.pdf ../
