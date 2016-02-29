#!/bin/bash

for CONTENT_IMAGE in `ls -1 content`
do
    for STYLE_IMAGE in `ls -1 styles`
    do
        OUTPUT_FILENAME=`echo "$CONTENT_IMAGE-in-the-style-of-$STYLE_IMAGE"`
        mkdir -p ~/output
        OUTPUT_FILE=~/output/$OUTPUT_FILENAME

        echo "Rendering $CONTENT_IMAGE in the style of $STYLE_IMAGE."
        th neural_style.lua -style_image styles/$STYLE_IMAGE  -content_image content/$CONTENT_IMAGE -save_iter 0 -image_size 2048 -output_image $OUTPUT_FILE -num_iterations 1000
    done
done
