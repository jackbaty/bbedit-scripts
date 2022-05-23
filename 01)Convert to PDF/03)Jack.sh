#!/bin/sh

## Location of Pandoc support files.
prefix=/Users/jbaty/.pandoc

## output directory
outputpath=/Users/jbaty/Desktop/

## Default Template
template=jack.latex

cd "$(dirname "$BB_DOC_PATH")"

pandoc -f markdown+smart -s --pdf-engine=xelatex  --template=$prefix/templates/$template -o "${outputpath}${BB_DOC_NAME%%.*}".pdf "$BB_DOC_PATH"   #> /dev/null 2>&1
open "${outputpath}${BB_DOC_NAME%%.*}".pdf

