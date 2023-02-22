#!/bin/bash

mkdir -p thumbnail/

shopt -s nullglob
for i in *.{jpg,jpeg,png,JPG,JPEG,PNG}; do
    echo "Converting $i ..."
    convert "$i" -resize '1280x800>' "thumbnail/${i%.*}_cool3c.${i##*.}"
done

