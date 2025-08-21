#!/bin/bash
set -e

echo "Copying labeliq_logo.jpg..."

# Copy the image file
cp "/hologram/data/project/zenstride/.prompt_attachments/4b34d2b7-5031-4a49-8991-c986c981d4b2.jpg" "/hologram/data/project/zenstride/assets/images/labeliq_logo.jpg"

# Verify the copy was successful
if [ -f "/hologram/data/project/zenstride/assets/images/labeliq_logo.jpg" ]; then
    echo " Image successfully copied to assets/images/labeliq_logo.jpg"
    ls -la "/hologram/data/project/zenstride/assets/images/labeliq_logo.jpg"
else
    echo " Failed to copy image"
    exit 1
fi

echo "Copy operation complete!"