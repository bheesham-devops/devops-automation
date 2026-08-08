# Create a default Admin user with the name muadmin and password muadmin123. The user should have sudo privileges and be able to run commands without a password prompt.
#!/bin/bash

useradd -m -s /bin/bash muadmin
echo "muadmin:muadmin123" | chpasswd
usermod -aG sudo muadmin
echo "muadmin ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
