#!/bin/sh

for i in *
do
convert * -resize 1280x800\! cool3c_$i
done
