#!/bin/bash

# Update package lists
sudo apt update

# Install Docker
sudo apt install -y docker.io

# Add the "jenkins" user to the "docker" group
sudo usermod -aG docker jenkins

# Add the "ubuntu" user to the "docker" group
sudo usermod -aG docker ubuntu

# Restart the Docker service
sudo systemctl restart docker
