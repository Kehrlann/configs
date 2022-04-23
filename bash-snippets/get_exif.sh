#!/bin/bash

set -eou

function date_exif() {
  mdls $1 | grep "kMDItemContentCreationDate" | head -n1 | sed 's/.*= //g' | cut -c1-10
}

mdls -h

for f in DSC*; do
  photo_date=$(date_exif $f | sed 's/\-//g')
  cp $f IMG-${photo_date}_dsc.jpg
done
