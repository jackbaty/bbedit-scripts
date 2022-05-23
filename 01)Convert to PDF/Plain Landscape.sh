#!/bin/sh
#. /Users/jbaty/.zshrc

filename=$BB_DOC_PATH
basename=${filename%.*}

#pandoc  --template /Users/jbaty/.pandoc/default.latex "$filename" -o "$basename".pdf -V landscape  #> /dev/null 2>&1

## Location of Pandoc support files.
prefix=/Users/jbaty/.pandoc

## Default Template

template=plain.template

pandoc -r markdown+simple_tables+table_captions+yaml_metadata_block -s -S  --template=$prefix/templates/$template "$filename" -o "$basename".pdf -V landscape  #> /dev/null 2>&1


if [ -f "$basename.pdf" ]; then
   open "$basename.pdf"
fi

