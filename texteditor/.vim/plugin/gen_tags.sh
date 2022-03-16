#!/bin/bash

SRC_LOC="./"
declare -a LANGUAGES=( "c" "c++" "Rust" )
declare -a FILE_TYPE=( "c" "cc" "cpp" "h" "hpp" "rs" )

# Terminate on error
set -e

# Create ctags
for i in "${LANGUAGES[@]}"
do
	tmp=${tmp}","${i}
done
#ctags -R ${SRC_LOC} --languages=${tmp}
ctags -a -e -f tags --options="${HOME}/.vim/plugin/ctags.rust" --languages=${tmp} -R ${SRC_LOC}

# Create cscope
rm -f cscope.files cscope.out
for i in "${FILE_TYPE[@]}"
do
	find -L ${SRC_LOC} -name \*.${i} >> cscope.files
done
cscope -b
