#!/bin/bash
timestamp=`date +%Y/%m/%d-%H:%M:%S`
echo "System path is $PATH at $timestamp"

#!/bin/bash

curl -sS https://epg.best/e22b-nuxttv.xml.gz -o /downloads/tv.xml.gz
gunzip -f /downloads/tv.xml.gz > /downloads/tv.xml
rm /downloads/tv.xml.gz
