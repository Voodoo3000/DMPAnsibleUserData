#!/bin/bash

# Install updates
sudo yum -y update

# Install Ansible
echo "Install Ansible"
sudo yum install python ansible -y

# Install whois package
echo "Whois package are installing"
sudo apt install whois -y

# Create Ansible user
echo "Ansible user is creating"
useradd -m -s /bin/bash provision
passwd provision

# Create new cofiguration file to add the 'provision' user for sudo without the password
echo  -e 'provision\tALL=(ALL)\tNOPASSWD:\tALL' > /etc/sudoers.d/provision

# Define user and encrypted password for ansible hosts
mkpasswd --method=SHA-512
TYPE THE PASSWORD 'secret01'

# Login to the 'provision' user and generate the ssh key using the ssh-keygen command
su - provision
ssh-keygen -t rsa