#!/bin/bash

while S=$(inotifywait -eMODIFY $1 2>/dev/null) ; do
  echo "$(date) $S"
  FILE=$(echo $S | awk '{print $3}')
  cat "$1/$FILE"
  echo ""
done
