#!/bin/bash

set -eou

function date_exif() {
  mdls $1 | grep "kMDItemContentCreationDate" | head -n1 | sed 's/.*= //g' | gdate +"%Y_%m_%d" -f -
}

mdls -h
magick mogrify -monitor -format jpg *.heic || true
rm *.heic || true

mkdir output

for f in *.jpg; do
  echo "Transforming $f"
  photo_date="$(date_exif $f)-$(uuidgen | cut -c1-8)"
  echo "Into         output/IMG-${photo_date}.jpg"
  cp "$f" "output/IMG-${photo_date}.jpg"
done

zip -r output.zip output
