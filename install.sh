#!/bin/bash

set -e

# Define the base URL for downloading files
BASE_URL="https://raw.githubusercontent.com/jorcelinojunior/cursor-setup-wizard/main"

# Download the main script
echo -e "\nDownloading cursor_setup.sh...\n"
curl -s -o "${HOME:-~}/cursor-setup-wizard/cursor_setup.sh" "$BASE_URL/cursor_setup.sh"

# Make the script executable
chmod +x "${HOME:-~}/cursor-setup-wizard/cursor_setup.sh"

# Run the downloaded script
echo -e "\nExecuting cursor_setup.sh...\n"
"${HOME:-~}/cursor-setup-wizard/cursor_setup.sh"