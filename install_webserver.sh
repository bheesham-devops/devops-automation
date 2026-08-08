#install webserver script also add owner details to the webserver files
#!/bin/bash

# Update package list and install Apache
apt-get update
apt-get install -y apache2

# Start Apache service
systemctl start apache2

# Enable Apache to start on boot
systemctl enable apache2
