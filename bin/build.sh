#!/usr/bin/env bash


mkdir -p docs/data

# keep original file names as its easier to pull down from google docs
echo "copying /rawdata to /docs/data"
cp "rawdata/tech jargon - games.csv" docs/data/games.csv
cp "rawdata/tech jargon - net.csv" docs/data/net.csv

# TODO - transform to JSON etc

# requirements
# npm install -g csv2md

echo "convert to markdown files"
csv2md "rawdata/tech jargon - games.csv" > docs/data/games.md
csv2md "rawdata/tech jargon - net.csv" > docs/data/net.md
