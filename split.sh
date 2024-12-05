
#!/bin/bash

if [ -z "$1" ]; then
  echo "Usage: $0 <file_to_split>"
  exit 1
fi

input_file="$1"
file_name=$(basename "$input_file")
folder_name="${file_name%.*}"

mkdir -p "$folder_name"

# 500M / 1G
split -b 2M "$input_file" "$folder_name/$file_name.part_"

echo "File '$input_file' has been split into 1GB parts and saved in '$folder_name'."
