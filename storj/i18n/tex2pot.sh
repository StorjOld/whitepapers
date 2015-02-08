#!/bin/bash

# Generates a pot file for upload on Transifex.
# Should be run at every update of the tex file.

# Dependencies:
# po4a texlive

po4a-gettextize -f latex -m ../Storj\ Whitepaper.tex -M UTF-8 -p storj-whitepaper.pot --copyright-holder "Storj Labs" --package-name "Storj Whitepaper" --package-version 1

