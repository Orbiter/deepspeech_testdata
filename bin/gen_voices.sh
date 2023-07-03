#!/usr/bin/env bash

# Read the JSON configuration file
voices_file="voices.json"

# Create a directory if it doesn't exist
output_dir="../wav"
mkdir -p "$output_dir"

# Get the total number of languages
num_languages=$(jq '. | length' "$voices_file")

# Loop through each language in the JSON file
for (( i=0; i<$num_languages; i++ )); do
  language=$(jq -r ".[$i].language" "$voices_file")

  # Loop through each sentence
  num_sentences=$(jq ".[$i].sentences | length" "$voices_file")
  for (( j=0; j<$num_sentences; j++ )); do
    sentence=$(jq -r ".[$i].sentences[$j]" "$voices_file")
    
    # Loop through each voice for the current language
    num_voices=$(jq ".[$i].voices | length" "$voices_file")
    for (( k=0; k<$num_voices; k++ )); do
      voice=$(jq -r ".[$i].voices[$k]" "$voices_file")

      # Construct the output file name (using only the first word of the sentence)
      first_word=$(echo "$sentence" | awk '{print $1}' | tr '[:upper:]' '[:lower:]')  # Fetch the first word from the sentence and convert it to lowercase
      output_file="$output_dir/test_${language}_${voice}_${first_word}.wav"
      
      # Generate the audio file using the voice and sentence
      say -v "$voice" --data-format=LEI16@16000 -o "$output_file" -- "$sentence"
    done
  done
done
