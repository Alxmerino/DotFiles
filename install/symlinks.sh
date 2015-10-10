#! /usr/bin/env bash
config=~/DotFiles
for file in $config/.*
do
    if [[ "$file" != $config/".DS_Store" && -f "$file" ]]; then
        $dry ln -sf "$file" ~/
    fi;
done
