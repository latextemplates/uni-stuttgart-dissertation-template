#!/bin/bash
latexmk thesis-example
cd spine-print
pdflatex spine
cp spine.pdf ../
cd ../cover-print
pdflatex cover
cp cover.pdf ../

