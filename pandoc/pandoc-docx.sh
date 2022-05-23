#!/bin/bash
PATH=$PATH:/usr/texbin:/usr/local/bin

cd "$(dirname "$BB_DOC_PATH")"
pandoc -r markdown+simple_tables+table_captions+yaml_metadata_block -s -S -o "${BB_DOC_PATH%%.*}".docx "$BB_DOC_PATH"
