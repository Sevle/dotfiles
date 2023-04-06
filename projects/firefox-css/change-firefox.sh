#!/bin/bash

CHROME="$HOME/.mozilla/firefox/ouga74te.default-esr/chrome"
CHROME_COPY="$HOME/projetos/firefox-css"

rm $CHROME/userChrome.css
cp $CHROME_COPY/userChrome.css $CHROME/
