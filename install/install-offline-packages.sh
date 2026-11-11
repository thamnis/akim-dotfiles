#!/bin/bash
set -e
echo "=========================================================================="
echo " Installing Pre-downloaded System Packages via pacman"
echo "=========================================================================="
echo "All 34 packages are already downloaded in /tmp/arch-packages/ (0 B download needed)."
echo "Please enter your sudo password below to install them system-wide:"
echo ""
sudo pacman -U --needed /tmp/arch-packages/*.pkg.tar.zst
echo ""
echo "=========================================================================="
echo " All system packages installed successfully!"
echo "=========================================================================="
read -p "Press [Enter] to close..."
