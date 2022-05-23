#!/bin/sh

filename=$BB_DOC_PATH
basename=${filename%.*}
#parent_folder=`dirname $filename`
#cd $parent_folder

pandoc  --template /Users/jbaty/.pandoc/templates/meeting.latex "$filename" -o "$basename".pdf  #> /dev/null 2>&1

if [ -f "$basename.pdf" ]; then
   open "$basename.pdf"
fi

