#!/bin/bash

echo "Installing socscan command..."

sudo cp socscan.sh /usr/local/bin/socscan
sudo chmod +x /usr/local/bin/socscan

echo "Installed."
echo "Run with: sudo socscan --all"
