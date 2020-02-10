#!/usr/bin/env bash
__xml_file="sitemap_tika.xml"
collectionName="extractBashCollection"
urlCount=($(xmllint --xpath "count(//urlset/url)" $__xml_file))
for (( nthUrl=1; nthUrl<=urlCount; nthUrl++ ))
do
  url=($(xmllint --xpath "//urlset/url[$nthUrl]/loc/text()" $__xml_file))
  title=($(xmllint --xpath "//urlset/url[$nthUrl]/title/text()" $__xml_file))
  country=($(xmllint --xpath "//urlset/url[$nthUrl]/country/text()" $__xml_file))
  /home/test/Desktop/solr-5.5.5/bin/post -c "$collectionName" -filetypes html "$url" -params "literal.title=$title&literal.location=$country" -delay 1 -recursive 0
done
