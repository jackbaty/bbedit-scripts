#!/bin/sh

## Location of Pandoc support files.
prefix=/Users/jbaty/.pandoc

## Default Template

template=tufte-handout.latex

cd "$(dirname "$BB_DOC_PATH")"

pandoc -r markdown+simple_tables+table_captions+yaml_metadata_block -s -S  --template=$prefix/templates/$template -o "${BB_DOC_PATH%%.*}".pdf "$BB_DOC_PATH"   #> /dev/null 2>&1

open "${BB_DOC_PATH%%.*}".pdf

