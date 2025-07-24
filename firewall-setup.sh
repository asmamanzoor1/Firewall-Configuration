#!/bin/bash

# Firewall Configuration Script for Debian

# Enable UFW firewall
sudo ufw enable

# Allow incoming SSH connections (Port 22)
sudo ufw allow 22

# Deny all other incoming traffic by default
sudo ufw default deny incoming

# Allow all outgoing traffic by default
sudo ufw default allow outgoing

# Show current firewall status
sudo ufw status verbose
