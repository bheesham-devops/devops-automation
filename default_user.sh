# Create a default Admin user with the name muadmin and password muadmin123. The user should have sudo privileges and be able to run commands without a password prompt.
#!/bin/bash

useradd -m -s /bin/bash muadmin
echo "muadmin:muadmin123" | chpasswd
usermod -aG sudo muadmin
echo "muadmin ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

# Set the default shell for the user to bash
chsh -s /bin/bash muadmin

# Set the default umask for the user to 022
echo "umask 022" >> /home/muadmin/.bashrc

# Set the default editor for the user to nano
echo "export EDITOR=nano" >> /home/muadmin/.bashrc

# Set the default PATH for the user to include /usr/local/bin
