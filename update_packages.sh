# Update and upgrade packages script and add owner details to the webserver files
#!/bin/bash
apt-get update
apt-get upgrade -y

# install jq and java 21
apt-get install -y jq openjdk-21-jdk