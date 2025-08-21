#!/usr/bin/env bash
set -euo pipefail

# Update system
sudo apt update -y

# Install Prometheus
sudo apt install -y prometheus

# Download and run Node Exporter
cd /opt
sudo wget https://github.com/prometheus/node_exporter/releases/download/v1.8.1/node_exporter-1.8.1.linux-amd64.tar.gz
sudo tar xvf node_exporter-*.tar.gz
sudo mv node_exporter-1.8.1.linux-amd64 node_exporter
cd node_exporter

# Create systemd service for node_exporter
sudo tee /etc/systemd/system/node_exporter.service >/dev/null <<EOF
[Unit]
Description=Node Exporter
After=network.target

[Service]
ExecStart=/opt/node_exporter/node_exporter
Restart=always

[Install]
WantedBy=default.target
EOF

# Start and enable node_exporter
sudo systemctl daemon-reload
sudo systemctl enable --now node_exporter

echo "Prometheus and Node Exporter installed."
