#!/bin/bash

# Define the base directory for Matterbridge
HOME_DIR=/addons/matterbridge

# Define the subdirectories for Matterbridge
MATTERBRIDGE_PLUGINS=$HOME_DIR/Matterbridge   # For matterbridge plugins
MATTERBRIDGE_STORAGE=$HOME_DIR/.matterbridge  # For matterbridge storage
MATTERBRIDGE_CERT=$HOME_DIR/.mattercert       # For matterbridge certification

# Create directories if they don't exist
mkdir -p $HOME_DIR
mkdir -p $MATTERBRIDGE_PLUGINS
mkdir -p $MATTERBRIDGE_STORAGE
mkdir -p $MATTERBRIDGE_CERT

# Start Matterbridge in a loop to handle restarts internally in the same container
while true; do
    echo "Starting Matterbridge..."
    matterbridge -docker -ingress -homedir $HOME_DIR
    echo "Matterbridge process exited. Restarting in 2 seconds..."
    sleep 2
done