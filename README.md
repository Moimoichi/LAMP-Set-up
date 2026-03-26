# LAMP Setup

This guide will help you set up a LAMP (Linux, Apache, MySQL, PHP) stack on your server.

## Prerequisites
Before you begin, ensure you have:
- A server running Ubuntu 20.04 or later
- Root access to the server

## Installation Steps

1. **Update the package index:**
   ```bash
   sudo apt update
   sudo apt upgrade -y
   ```

2. **Install Apache:**
   ```bash
   sudo apt install apache2 -y
   systemctl start apache2
   systemctl enable apache2
   ```

3. **Install MySQL:**
   ```bash
   sudo apt install mysql-server -y
   mysql_secure_installation
   ```

4. **Install PHP:**
   ```bash
   sudo apt install php libapache2-mod-php php-mysql -y
   ```

5. **Test PHP:** Create a PHP info file.
   ```bash
   echo "<?php phpinfo(); ?>" | sudo tee /var/www/html/info.php
   ```
   Visit `http://your_server_ip/info.php` to see if PHP is working.

6. **Set Up Virtual Hosts (Optional):**
   Follow the Apache configuration to set up virtual hosts if needed.

## Conclusion
Your LAMP stack should now be up and running! You can start deploying your applications. If you have any questions, feel free to reach out.
