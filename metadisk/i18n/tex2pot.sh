#!/bin/bash

# Generates a pot file for upload on Transifex.
# Should be run at every update of the tex file.

# Dependencies:
# po4a texlive

po4a-gettextize -f latex -m ../metadisk.tex -M UTF-8 -p metadisk.pot

