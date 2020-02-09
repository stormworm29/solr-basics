#!/usr/bin/env bash
sitemap_path="sitemap.xml"
collectionName="extractBashCollection"
urls=($(grep -oP '(?<=loc>)[^<]+' "$sitemap_path"))
 
 if [ ! -z "$urls" ]; then
 echo "Found ${#urls[@]} HTML file"
 for j in ${!urls[*]}
 do
 echo "${j} ssss ${urls[$j]}" 
 sudo /home/test/Desktop/solr-5.5.5/bin/post -c "$collectionName" -filetypes html "${urls[$j]}" -recursive 0 -delay 1
 done
 echo "____________________ $langcode parsing is completed ____________________" 
 else
 echo "____________________ No page found for $langcode ____________________"
 fi
