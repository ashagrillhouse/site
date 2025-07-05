#!/bin/bash
echo -e "\n"
# Directory where your MP3s are stored
music_dir="./"  # change this path if needed
output_csv="music_metadata.csv"
#mkdir -p ./organized_music
#cd "$music_dir" || exit 1

# Header for CSV
echo "file,title,artist,composer,lyricist,album,date" > "./$output_csv"



# Count total number of mp3 files
total_songs=$(ls -- *.mp3 2>/dev/null | wc -l)

# Exit if no files
if [ "$total_songs" -eq 0 ]; then
    echo "No MP3 files found."
    exit 1
fi


count=0

# Loop through MP3s
for file in *.mp3; do
    [ -e "$file" ] || continue

    count=$((count + 1))
    percent=$((count * 100 / total_songs))

    # Create progress bar
    bar_width=50
    filled=$((percent * bar_width / 100))
    empty=$((bar_width - filled))
    bar=$(printf "%0.s#" $(seq 1 $filled))
    space=$(printf "%0.s-" $(seq 1 $empty))

    # Print single-line progress bar
    printf "\r[%s%s] %3d%% - Processing: %s" "$bar" "$space" "$percent" "$file"

    # Extract metadata using ffprobe
    title=$(ffprobe -v error -show_entries format_tags=title -of default=noprint_wrappers=1:nokey=1 "$file")
    artist=$(ffprobe -v error -show_entries format_tags=artist -of default=noprint_wrappers=1:nokey=1 "$file")
    composer=$(ffprobe -v error -show_entries format_tags=composer -of default=noprint_wrappers=1:nokey=1 "$file")
    lyricist=$(ffprobe -v error -show_entries format_tags=lyricist -of default=noprint_wrappers=1:nokey=1 "$file")
    album=$(ffprobe -v error -show_entries format_tags=album -of default=noprint_wrappers=1:nokey=1 "$file")
    date=$(ffprobe -v error -show_entries format_tags=date -of default=noprint_wrappers=1:nokey=1 "$file")

    # Fallback defaults
    title="${title:-N/A}"
    artist="${artist:-Unknown Artist}"
    composer="${composer:-N/A}"
    lyricist="${lyricist:-N/A}"
    album="${album:-N/A}"
    date="${date:-N/A}"

    # Clean folder name: multiple artists → one folder
    #folder=$(echo "$artist" | tr ',/' '_' | tr ' ' '_' | tr -cd '[:alnum:]_')
    #mkdir -p "./organized_music/$folder"
    #cp "$file" "./organized_music/$folder/$file"

    # Escape commas for CSV
    esc_file=$(echo "$file" | sed 's/,/ /g')
    esc_title=$(echo "$title" | sed 's/,/ /g')
    esc_artist=$(echo "$artist" | sed 's/,/ /g')
    esc_composer=$(echo "$composer" | sed 's/,/ /g')
    esc_lyricist=$(echo "$lyricist" | sed 's/,/ /g')
    esc_album=$(echo "$album" | sed 's/,/ /g')

    # Append to CSV
    echo "\"$esc_file\",\"$esc_title\",\"$esc_artist\",\"$esc_composer\",\"$esc_lyricist\",\"$esc_album\",\"$date\"" >> "./$output_csv"
done

echo -e "\n\n✅ All done! Metadata saved to '$output_csv'"

