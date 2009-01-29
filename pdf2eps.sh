#!/usr/bin/bash

for F in `find . -mindepth 2 -type f -name "*.pdf"`; do 
	BASE=`basename "$F" .pdf`
	DIR=`dirname "$F"`
	echo "++ converting $F"
	convert "$F" "$DIR/$BASE.eps"
done

#for F in *.pdf ; do
#	BASE=`basename "$F" .pdf`
#	echo "++ converting $F"
#	convert "$F" "$BASE.eps"
#done