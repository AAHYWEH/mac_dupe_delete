#!/bin/bash
# Author: Stephen Bass 2024
# Remove duplicate files in a directory on MacOS
# usage example: ./dupedel.sh /Users

DIR=${1:-.} 

declare -a file_hash_map=()

find $DIR -type f -print0 | while read -d $'\0' file; do
    # Calculate checksum
    file_hash=$(md5 "$file" | awk '{ print $4 }')

    # if the checksum has already been found delete the file.
    if [ -n "${file_hash_map[$file_hash]}" ]; then
        echo "Removing Duplicate: $file"
        rm $file
    # otherwise add the hash/filename to the array of checksums
    else
        file_hash_map[$file_hash]=$file
    fi

done
