#!/bin/bash

# Path to the buildroot directory
BUILDROOT_DIR="buildroot"  # Replace with the actual path

# Check if the buildroot directory exists
if [ -d "$BUILDROOT_DIR" ]; then
    # Change directory to the buildroot directory and run make distclean
    cd "$BUILDROOT_DIR" || exit
    make distclean
    echo "make distclean executed in the buildroot directory."
else
    echo "Buildroot directory not found. Please update the BUILDROOT_DIR variable with the correct path."
    exit 1
fi
