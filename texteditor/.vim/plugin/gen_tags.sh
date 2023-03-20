#!/bin/bash

SRC_LOC="./"
declare -a LANGUAGES=( "c" "c++" "Rust" )
FILE_TYPE=".*\.(c|cc|cpp|cu|h|hpp|cuh|rs)"

# Terminate on error
set -e

# Create cscope
rm -rf ${SRC_LOC}/cscope.files
find -L ${SRC_LOC} -regextype egrep -regex "$FILE_TYPE" \
    | grep -vE "build|component|external" > cscope.files
cscope -b

rm -rf ${SRC_LOC}/tags
# Create ctags
tmp=""
for i in "${LANGUAGES[@]}"
do
    if [[ ${tmp} == "" ]]; then
        tmp=${i}
    else
        tmp=${tmp}","${i}
    fi
done

#ctags -R ${SRC_LOC} --languages=${tmp}
ctags --langmap=C++:+cu --langmap=C++:+.cuh --languages=${tmp} \
    --exclude=build --exclude=components --exclude=external -L cscope.files
