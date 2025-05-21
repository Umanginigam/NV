#!/bin/bash

# URL to download
URL="https://www.amfiindia.com/spages/NAVAll.txt"

# Output file
OUTFILE="nav_data.tsv"

# Download the file
curl -s "$URL" -o temp_nav.txt

# Extract relevant lines and convert to TSV
awk -F ';' '
BEGIN {
    OFS="\t";
    print "Scheme Name", "Asset Value"
}
NF >= 5 && $1 ~ /^[0-9]+$/ {
    print $4, $5
}' temp_nav.txt > "$OUTFILE"

# Cleanup
rm temp_nav.txt

echo "✅ NAV data saved to $OUTFILE"
