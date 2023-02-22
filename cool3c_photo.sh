#!/bin/sh

mkdir -p thumbnail/

for i in `file -i * | grep "image/" | cut -d: -f1` ;do
convert -resize 1280x800\> $i thumbnail/cool3c_$i
echo converting $i ...
done
