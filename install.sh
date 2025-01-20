#!/usr/bin/env bash

set -e

# Base URL for the repository
BASE_URL="https://raw.githubusercontent.com/jorcelinojunior/cursor-setup-wizard/main"

# Prepare setup directory
echo "Preparing the setup directory..."
SETUP_DIR="${HOME:-~}/cursor-setup-wizard"
mkdir -p "$SETUP_DIR"

# Download the main script
echo "Downloading cursor_setup.sh..."
if curl -s -o "$SETUP_DIR/cursor_setup.sh" "$BASE_URL/cursor_setup.sh"; then
  echo "Download completed successfully."
else
  echo "Error: Failed to download cursor_setup.sh. Please check your internet connection and try again."
  exit 1
fi

# Make the script executable
echo "Making cursor_setup.sh executable..."
if chmod +x "$SETUP_DIR/cursor_setup.sh"; then
  echo "Script is now executable."
else
  echo "Error: Failed to set execution permissions for cursor_setup.sh."
  exit 1
fi

# Execute the script
echo "Executing cursor_setup.sh..."
if ! "$SETUP_DIR/cursor_setup.sh"; then
  echo "Error: Failed to execute cursor_setup.sh. Please review the script and try again."
  exit 1
fi

echo "Setup completed successfully! Enjoy using Cursor Setup Wizard."
