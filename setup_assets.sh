#!/bin/bash
set -e

echo "Setting up assets directory and copying image..."

# Create the assets/images directory if it doesn't exist
mkdir -p "/hologram/data/project/zenstride/assets/images"

# Copy the image file
cp "/hologram/data/project/zenstride/.prompt_attachments/6c215212-5fb9-4ccb-be4e-c007ac138414.jpg" "/hologram/data/project/zenstride/assets/images/labeliq_logo.jpg"

# Verify the copy was successful
if [ -f "/hologram/data/project/zenstride/assets/images/labeliq_logo.jpg" ]; then
    echo "✓ Image successfully copied to assets/images/labeliq_logo.jpg"
    ls -la "/hologram/data/project/zenstride/assets/images/labeliq_logo.jpg"
else
    echo "✗ Failed to copy image"
    exit 1
fi

echo "Assets setup complete!"