#!/bin/sh

if [[ "x$COLS" == "x" ]] ; then
    echo "\$COLS is undefined. Use 'docker run -e COLS=\$(stty size | awk {'print \$2'}) <image_name>' to get graphics"
else
    ./centerGraphic.sh -c "$COLS" -s ricksFace.txt && ./centerGraphic.sh -c "$COLS" text.txt
    echo ""
fi
