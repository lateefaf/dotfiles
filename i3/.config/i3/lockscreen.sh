#!/bin/bash

# Directory containing images
IMAGE_DIR="/home/lateef/Pictures//wallpapers/fallout_loading_screens/"

# Select a random image from the directory
RANDOM_IMAGE=$(find "$IMAGE_DIR" -type f | shuf -n 1)

# Use the image for the i3lock background
i3lock -i "$RANDOM_IMAGE"

# If you want to blur the image, you might use Imagemagick like this:
# convert "$RANDOM_IMAGE" -blur 0x8 /tmp/i3lock.png
# i3lock -i /tmp/i3lock.png
