#!/bin/bash

TERM=cygwin

if [ $# -lt 1 ]; then
    echo "usage: pbuild.sh <2-7>"
    exit 1
fi

echo "++ Creating temporary PDF file for chapter $1..."
cat <<EOF > p.tex
\documentclass[paper=a5,twoside,fontsize=10pt,DIV=calc,headings=small]{scrbook}
\usepackage[american]{babel}
\input{shared/template}
\usepackage{shared/titlepage}
\input{commands.tex}
\begin{document}
\pagestyle{scrheadings}
EOF

echo "\\input{chapter$1.tex}" >> p.tex

cat <<EOF >>p.tex
\bibliographystyle{IAAS}
\bibliography{bibliography}
\end{document}
EOF

# echo "++ Executing latex..." && \
    # pdflatex -interaction=nonstopmode p.tex 1>/dev/null && \
    # echo "++ Executing bibtex..." && \
    # bibtex p 1>/dev/null && \
    # echo "++ Executing latex..." && \
    # pdflatex -interaction=nonstopmode p.tex 1>/dev/null && \
    # echo "++ Executing latex..." && \
    # pdflatex -interaction=nonstopmode p.tex 1>/dev/null && \
    # echo "++ done." || \
    # less +/^! p.log

# if the pdf has been deleted (by the rm), then sumatra is not running any more
# sumatra locks the pdf (cannot be deleted by rm if running)
if [ ! -e "p.pdf" ]; then
  rm sumatra.running
fi

echo "++ Executing texify..."
texify -p -q p.tex
echo "++ done." 

if [ ! -e "sumatra.running" ]; then
  echo "++ Opening sumatra"
  touch sumatra.running
  /cygdrive/c/Programme/Tools/SumatraPDF.exe p.pdf &
else
  echo "++ Reusing sumatra"
# /cygdrive/c/Programme/Tools/SumatraPDF.exe -reuse-instance p.pdf &
fi 

sleep 4
echo "++ Cleaning up"
rm p.*
