#!/bin/bash
FILENAME="urls-$(date --iso-8601).txt"
if [ -f $FILENAME ]; then
    rm $FILENAME
fi
wget --quiet https://chrome.google.com/webstore/sitemap --output-document - | egrep -o "https://chrome\.google\.com[^<]+"|grep -v "h=" |grep -v "hl=" | xmlstarlet unesc | wget -i - -O - |grep -oP "(?<=\<loc\>)(.*?)(?=<\/loc>)" >> $FILENAME