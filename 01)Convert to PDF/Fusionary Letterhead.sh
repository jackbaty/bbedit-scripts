#!/bin/sh
#. /Users/jbaty/.bash_profile

## Location of Pandoc support files.
prefix=/Users/jbaty/.pandoc

## Default Template

template=fmletterhead.latex

cd "$(dirname "$BB_DOC_PATH")"

pandoc -f markdown+smart -s  --pdf-engine=xelatex --template=$prefix/templates/$template -o "${BB_DOC_PATH%%.*}".pdf "$BB_DOC_PATH"   #> /dev/null 2>&1

open "${BB_DOC_PATH%%.*}".pdf

