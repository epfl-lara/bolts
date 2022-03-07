#!/bin/bash

make genc-qoiconv
mkdir -p ../output

# Encoding (decoding .png into raw pixels and encoding these raw pixels to .qoi)
for i in ../images/*.png; do
    [ -f "$i" ] || break
    filename=$(basename -- "$i")
    filename="${filename%.*}"

    ./genc-qoiconv "$i" "../output/$filename.qoi"
    cmp -l "../images/$filename.qoi" "../output/$filename.qoi"
    if [[ "$?" = 0 ]]; then
        echo "../images/$filename.qoi and ../output/$filename.qoi are the same"
    fi
    # else: cmp -l will print a message saying otherwise
done

# Decoding (decoding .qoi into raw pixels and encoding these raw pixels into .png)
for i in ../images/*.qoi; do
    [ -f "$i" ] || break
    filename=$(basename -- "$i")
    filename="${filename%.*}"

    ./genc-qoiconv "../images/$filename.qoi" "../output/$filename.png"
done