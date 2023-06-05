#!/bin/bash

# Check if running as root
if [[ "$(id -u)" -ne 0 ]]; then
  # Not running as root
  echo "Please run as sudo"
  exit 1
fi
# Running as root, do stuff
echo "Running under sudo"

# Create grafana/data and grafana/plugins folders
mkdir -p grafana/data
mkdir -p grafana/plugins

# Change rights to 472:0 for all folders in grafana folder
find grafana -type d -exec chown 472:0 {} +
