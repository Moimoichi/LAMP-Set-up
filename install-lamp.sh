#!/bin/bash

# Update package manager
echo "Updating package manager..."
sudo apt-get update || { echo 'Failed to update' ; exit 1; }

# Install Apache
echo "Installing Apache..."
sudo apt-get install -y apache2 || { echo 'Failed to install Apache' ; exit 1; }

# Install MySQL
echo "Installing MySQL..."
sudo apt-get install -y mysql-server || { echo 'Failed to install MySQL' ; exit 1; }

# Secure MySQL installation
echo "Securing MySQL..."
sudo mysql_secure_installation

# Install PHP
echo "Installing PHP..."
sudo apt-get install -y php libapache2-mod-php php-mysql || { echo 'Failed to install PHP' ; exit 1; }

# Restart Apache
echo "Restarting Apache..."
sudo systemctl restart apache2 || { echo 'Failed to restart Apache' ; exit 1; }

echo "LAMP installation completed successfully!"