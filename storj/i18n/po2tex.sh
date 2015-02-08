#!/bin/bash

# Generates tex files from translated po files downloaded from Transifex.

# Dependencies:
# po4a texlive


# remove transifex prefix from file names:
rename 's/^for_use_storj_storj-whitepaper_/storj-whitepaper_/' *.po

for file in *.po
do
  filename="${file%.*}" # get name without extension
  echo "Generating tex file from $filename"
  po4a-translate -f latex -m ../Storj\ Whitepaper.tex -M UTF-8 -p $filename.po -l $filename.tex
done

