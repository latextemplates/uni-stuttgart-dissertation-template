#!/bin/bash
latexmk -pdf -pdflatex="pdflatex --interaction=nonstopmode" thesis-example
ls -la
cd spine-print
pdflatex --interaction=nonstopmode spine
ls -la
cp spine.pdf ../
cd ../cover-print
pdflatex --interaction=nonstopmode cover
cp cover.pdf ../
