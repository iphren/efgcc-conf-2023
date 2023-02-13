#!/bin/bash

name_dir=$(ls speakers)

for name in $name_dir
do
    cat speakers/${name}/README.md
done
