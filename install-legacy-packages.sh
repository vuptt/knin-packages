#!/usr/bin/env bash

# Set the URL of the zip file
url="https://raw.githubusercontent.com/vuptt/knin-packages/main/knin-packages.zip"

# Set the destination folder for extraction
destination="$HOME/.m2/repository"

# Create the destination folder if it does not exist
mkdir -p "$destination"

# Download the zip file
echo "Downloading zip file..."
curl -s -o temp.zip "$url"

# Extract the zip file to the destination folder
echo "Extracting zip file..."
unzip -qo temp.zip -d "$destination" -x "__MACOSX/*"

# Remove the temporary zip file
echo "Cleaning up..."
rm temp.zip

echo "Extraction complete!"
