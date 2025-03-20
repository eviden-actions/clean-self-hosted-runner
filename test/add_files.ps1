#!/bin/bash

mkdir -p myfolder
mkdir -p .myhiddenfolder
echo "insert text here" > myfile.txt
echo "insert text here" > ./myfolder/myfile.txt
echo "insert text here" > ./myfolder/.myhiddenfile.txt
echo "insert text here" > ./.myhiddenfolder/myfile.txt
echo "insert text here" > .myhiddenfile.txt

attrib +H .myhiddenfolder /S /D
attrib +H .myhiddenfolder/* /S /D
attrib +H .myhiddenfile.txt /S /D
