#!/usr/bin/env bash

file_path="${HOME}/Downloads/$(date +%s).png"

maim -u -s "$file_path"

# Handle when area selection is cancelled.
if [[ -f "$file_path" ]]; then
  pinta "$file_path"
fi
