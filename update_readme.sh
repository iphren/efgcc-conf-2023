#!/bin/bash

for name in $(ls speakers)
do
    cd speakers/${name}
    perl -i -0777 -pe 's/^\[\/\/\]: # \(photos\).*/[\/\/]: # (photos)\n/sm' README.md
    for pic in $(ls *.jpeg 2> /dev/null)
    do
        sed -i "\$s/$/\n![${pic%.*}]($pic)/" README.md
    done
    cd ../../
done
