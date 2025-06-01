#!/bin/bash

# Duration to run the loop (in seconds)
DURATION=8
START_TIME=$(date +%s)

while true; do
  CURRENT_TIME=$(date +%s)
  ELAPSED=$((CURRENT_TIME - START_TIME))

  # Stop after 30 seconds
  if [ "$ELAPSED" -ge "$DURATION" ]; then
    break
  fi

  # Create empty file named hi_<elapsed seconds>.txt
  touch "hi_${ELAPSED}.txt"

  # Wait 1 second
  sleep 1
done
