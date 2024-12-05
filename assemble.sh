
#!/bin/bash

if [ -z "$1" ]; then
  echo "Usage: $0 <folder_with_parts>"
  exit 1
fi

folder_name="$1"
output_file="${folder_name}.tar.gz"

cat "$folder_name"/* > "$output_file"

echo "The parts from '$folder_name' have been reassembled into '$output_file'."
