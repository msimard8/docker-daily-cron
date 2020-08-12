#!/bin/bash
curl -sS https://epg.best/e22b-nuxttv.xml.gz -o /downloads/tv.xml.gz
gunzip -f /downloads/tv.xml.gz > /downloads/tv.xml
rm /downloads/tv.xml.gz

echo "Downloaded Guide" >> /var/log/cron.log 2>&1
