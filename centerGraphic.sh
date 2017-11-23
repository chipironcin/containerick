#!/bin/sh
set -euo pipefail

DEFAULT_COLS=$(stty size 2>/dev/null | awk '{print $2}' || echo "1")
SAFE=false
COLS=$DEFAULT_COLS

usage() {
  printf "Usage:\ncenterGraphic.sh filename [-c terminal_columns_width] [-s]\n" 2>&1;
  exit -1;
}

padAndPrint() {
  echo "$(printf "%$2s")$1"
}

if [[ $# -lt 1 ]]; then
    usage
fi

while getopts ":c:s" opt; do
    case "${opt}" in
        c)
            COLS=${OPTARG}
            ;;
        s)
            SAFE=true
            ;;
        *)
            usage
            ;;
    esac
done
shift $((OPTIND-1))

FILE="$1"

LANG="C.UTF-8"
IFS=""
MAX_LENGTH=$(while IFS= read -r line; do echo ${#line}; done < "$FILE" | sort -nr | head -1)
SPAN=$(( $((COLS / 2)) - $((MAX_LENGTH / 2)) ))

if [[ "$MAX_LENGTH" -gt "$COLS" && "$SAFE" == "true" ]] ; then
    echo "[Terminal is too narrow. Skipping graphics]"
    exit 1
fi

while read -r data; do
    padAndPrint "$data" $SPAN
done < "$FILE"
