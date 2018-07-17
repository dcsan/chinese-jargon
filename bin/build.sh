#!/usr/bin/env bash



# TODO - transform to JSON etc

mkdir -p docs/data

echo "copying /rawdata to /docs/data"
cp "rawdata/tech jargon - games.csv" docs/data/games.csv
cp "rawdata/tech jargon - net.csv" docs/data/net.csv

# npm install -g csv2md

echo "convert to markdown files"
csv2md "rawdata/tech jargon - games.csv" > docs/data/games.md
csv2md "rawdata/tech jargon - net.csv" > docs/data/net.md
