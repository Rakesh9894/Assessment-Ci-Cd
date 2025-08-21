#!/usr/bin/env bash
set -euo pipefail

# Update packages
sudo apt update -y

# Install Node.js 18
curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -
sudo apt install -y nodejs

# Install PM2 
sudo npm install -g pm2

# Install Nginx + Certbot
sudo apt install -y nginx python3-certbot-nginx

# Enable and start nginx
sudo systemctl enable --now nginx

echo "Node.js, PM2, Nginx, and Certbot installed successfully."
