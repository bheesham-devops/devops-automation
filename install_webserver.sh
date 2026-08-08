#install webserver script also add owner details to the webserver files
#!/bin/bash

# Update package list and install Apache
apt-get update
apt-get install -y apache2

# Start Apache service
systemctl start apache2

# Enable Apache to start on boot
systemctl enable apache2

# Add owner details to the webserver files
chown -R www-data:www-data /var/www/html

# Set permissions for the webserver files
chmod -R 755 /var/www/html

# Create a simple index.html file to test the webserver
echo "<!DOCTYPE html>
<html>
<head>
    <title>Welcome to Apache Web Server</title>
</head>
<body>
    <h1>Apache Web Server is running!</h1>
</body>
</html>" > /var/www/html/index.html
