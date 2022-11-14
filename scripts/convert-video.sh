#!/usr/bin/env sh
if [ "$#" -ne 2 ]; then
    echo "1st argument: input image"
    echo "2nd argument: output folder"
    exit
fi

mkdir -p $2/gear-1 \
         $2/gear-2 \
         $2/gear-3 \
         $2/gear-4 \
         $2/gear-5 \
         $2/gear-6 \
         $2/gear-7 \
         $2/gear-8 \
         $2/gear-9 \
# todo finish script
ffmpeg $1
