#!/bin/sh


filename=$BB_DOC_PATH

latexmk -cd -c "$filename"  > /dev/null 2>&1

