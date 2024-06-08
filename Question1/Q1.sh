#!/usr/bin/bash

# File_Path
file_path="C:/Users/hp/Desktop/DevTest/Question1/text.txt"

#Windows path to Unix
unix_path=$(echo "$file_path" | sed 's|\\|/|g' | sed 's|C:|/mnt/c|')

# Check if the file exists
if [ ! -f "$unix_path" ]; then
  echo "File not found at path: $unix_path"
  exit 1
fi

# Function to count words of specific length
count_words() {
  local length=$1
  grep -E "^[a-zA-Z]{$length}$" "$unix_path" | wc -l
}

# Print the count of words of different lengths
echo "Number of 1-letter words: $(count_words 1)"
echo "Number of 2-letter words: $(count_words 2)"
echo "Number of 3-letter words: $(count_words 3)"
echo "Number of 4-letter words: $(count_words 4)"
echo "Number of 5-letter words: $(count_words 5)"


