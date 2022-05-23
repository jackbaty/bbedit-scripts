#!/bin/sh
#. /Users/jbaty/.bash_profile

filename=$BB_DOC_PATH
basename=${filename%.*}


pandoc  --template /Users/jbaty/.pandoc/fusionary-offer.template "$filename" -o "$basename".pdf  #> 

if [ -f "$basename.pdf" ]; then
   open "$basename.pdf"
fi

