#!/bin/bash

mkdir -p $(pwd)/tmp/all

for filename in $(pwd)/*.py; do
  file=$(basename $filename)

  echo "Execute $file output to ./tmp/all/$file.csv"

  docker run -v $(pwd)/tmp/all:/out --rm -it tv_parsers $file --output /out/$file.csv
done