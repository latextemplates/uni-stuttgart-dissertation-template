#!/bin/bash
latexmk -pdf -pdflatex="pdflatex --interaction=nonstopmode" thesis-example || exit 1
ls -la
cd spine-print
pdflatex --interaction=nonstopmode spine || exit 1
ls -la
cp spine.pdf ../
cd ../cover-print
pdflatex --interaction=nonstopmode cover || exit 1
cp cover.pdf ../
