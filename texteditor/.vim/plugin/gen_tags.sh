#!/bin/bash

SCRIPT_DIR="$(dirname "$(realpath "$0")")"
WORK_DIR=$(pwd)

declare -a LANGUAGES=( "c" "c++" "Rust" )
FILE_TYPE=".*\.(c|cc|cpp|cu|h|hpp|cuh|rs)"
RUST_TAGS="${SCRIPT_DIR}/ctags.rust"

# Create cscope
rm -rf ${WORK_DIR}/cscope.files
find -L ${WORK_DIR} -regextype egrep -regex "$FILE_TYPE" \
    | grep -vE "build|component|external" > cscope.files
cscope -b

rm -rf ${WORK_DIR}/tags
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

ctags --options="${RUST_TAGS}" --langmap=C++:+.cu --langmap=C++:+.cuh --languages=${tmp} \
    --exclude=build --exclude=components --exclude=external -L cscope.files
