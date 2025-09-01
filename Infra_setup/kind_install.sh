#!/bin/bash
set -e

# Download latest kind binary
curl -Lo ./kind https://kind.sigs.k8s.io/dl/latest/kind-linux-amd64

# Install kind
chmod +x ./kind
sudo mv ./kind /usr/local/bin/

# Verify installation
kind --version
