#!/bin/bash

# Create the "sonarqube" user
sudo useradd -m sonarqube

# Set the password for the "sonarqube" user
echo 'sonarqube:sonarqube' | sudo chpasswd

# Download SonarQube distribution ZIP file
wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-9.4.0.54424.zip

# Unzip the downloaded ZIP file
sudo unzip sonarqube-9.4.0.54424.zip -d /opt

# Set permissions and ownership for the SonarQube installation
sudo chmod -R 755 /opt/sonarqube-9.4.0.54424
sudo chown -R sonarqube:sonarqube /opt/sonarqube-9.4.0.54424

# Start the SonarQube server
sudo -u sonarqube /opt/sonarqube-9.4.0.54424/bin/linux-x86-64/sonar.sh start
