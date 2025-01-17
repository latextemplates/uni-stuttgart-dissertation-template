# Executables

## Required for thumbpdf as latexmk does not support thumbpdf by itself
latexcompiler = lualatex

## evince at linux
viewer = 'C:/Program Files (x86)/SumatraPDF/SumatraPDF.exe'

## Editor
editor = gedit

# Files

## Main file name and literature list
MASTER_TEX = thesis-example.tex
LITERATURE = bibliography.bib

## Derived file names
SRC = $(shell basename $(MASTER_TEX) .tex)
TEX_FILES = $(wildcard *.tex content/*.tex)
GFX_FILES = $(wildcard figures/*)

PDF = $(SRC).pdf
AUX = $(SRC).aux

# Other

date=$(shell date +%Y%m%d%H%M)

# Tasks


## was wird gemacht, falls nur make aufgerufen wird
## hier sollte noch der aspell check rein für jedes file einzeln über for schleife
all: $(PDF)
.PHONY: $(PDF)

compile: $(PDF)

$(PDF): $(MASTER_TEX) $(LITERATURE) $(TEX_FILES) $(GFX_FILES)
	latexmk $(MASTER_TEX)

clean:
	latexmk -C

## Endversion - mit eingebauter Seitenvorschau
## Mehrere Durchlaeufe, da bei longtable einige runs mehr vonnoeten sind...
final: $(PDF)
	thumbpdf $(PDF)
	$(latexcompiler) $(MASTER_TEX)

mrproper: clean
	rm -f *~


# Verschiedene Ausgabformate

pdf: $(PDF)

stand: $(PDF)
	cp $(PDF) "Ausarbeitung - Stand $(date).pdf"

html: clean pdf
	rm $(AUX)
	htlatex $(SRC) "html,word,charset=utf8" " -utf8"


# Tools

view: pdf
	$(viewer) $(PDF)&

edit:
	$(viewer) $(PDF)&
	$(editor) *.tex&


# Support

## Rechtschreibung
##
## Das ganze am Besten vor der final und als eigene Version ala make spellcheck
## aspell line: aspell -t -l de_DE -d german -c --per-conf= "Dateiname" *.tex -T utf-8 --encoding=utf-8
## Schreiben der LaTeX-Befehle in eine config Dateiname. Sieht so aus
## add-tex-command begin PO // PO := prüfe []{} ;; po := ignoriere []{}
## Leerzeichen ungleich Tabs !!!
## Config File nicht vergessen
aspell:
	for tex in $(TEX_FILES);	\
		do	\
			aspell -t -l de_DE -d german -T utf-8 -c $$tex --encoding=utf-8;	\
		done

showundef:
	grep undefined $(LOG)


## Reformatierung

format:
	latexindent -l -s -sl -w $(SRC)

indent:
	latexindent -y="indentPreamble:1,defaultIndent:'  '" -m -w $(SRC)

split-sentences:
	latexindent -m -l -s -sl -w $(SRC)
