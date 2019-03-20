#!/usr/bin/env bash

for file in language/tests/*.savo
do
    if [[ -f ${file} ]]; then
        echo "Ajan skriptin: ${file}"
        ./sl "${file}"
    fi
done