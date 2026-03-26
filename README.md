# LAMP Stack Setup on Ubuntu 20.04

## Overview
This project demonstrates a full **LAMP stack setup** on Ubuntu 20.04, including:

- **Apache** – Web server  
- **MySQL** – Database server  
- **PHP** – Server-side scripting  
- Optional **Virtual Hosts** configuration  

This setup is intended for local development or server deployment.

---

## Prerequisites

- Ubuntu 20.04 server
- Root or sudo privileges
- Basic knowledge of Linux commands
- Internet connection to download packages

---

## Directory Structure
LAMP-Set-up/
├── configs/
│ ├── apache/ # Apache configuration files
│ ├── php/ # PHP configuration files (php.ini, etc.)
│ └── mysql/ # MySQL configuration files (my.cnf)
├── scripts/ # Bash scripts for automation
├── docs/ # Optional screenshots or diagrams
└── README.md


---

## Setup Steps

### 1. Update System

```bash
sudo apt update -y
sudo apt upgrade -y

Install Apache, MySQL, PHP
sudo apt install apache2 mysql-server php libapache2-mod-php php-mysql -y
3. Verify Installation
Apache: http://server-ip
MySQL: sudo systemctl status mysql

PHP: create a info.php file in /var/www/html/:
<?php phpinfo(); ?>

Copy Configurations (Optional)
mkdir -p ~/LAMP-Set-up/configs/apache
cp /etc/apache2/sites-available/*.conf ~/LAMP-Set-up/configs/apache/

mkdir -p ~/LAMP-Set-up/configs/php
cp /etc/php/7.4/apache2/php.ini ~/LAMP-Set-up/configs/php/

mkdir -p ~/LAMP-Set-up/configs/mysql
cp /etc/mysql/mysql.conf.d/mysqld.cnf ~/LAMP-Set-up/configs/mysql/


Enable Apache Modules and Restart
sudo a2enmod rewrite
sudo systemctl restart apache2
6. Optional: Virtual Hosts Setup
Copy your vhost .conf files to /etc/apache2/sites-available/
Enable site: sudo a2ensite your-vhost.conf
Reload Apache: sudo systemctl reload apache2
Access Instructions
Apache Web Server: http://server-ip
MySQL: mysql -u root -p
PHP Info Page: http://server-ip/info.php
Troubleshooting
Apache not starting: sudo systemctl status apache2
MySQL login issues: sudo mysql_secure_installation
PHP errors: check /var/log/apache2/error.log

![License](https://img.shields.io/badge/license-MIT-blue)
