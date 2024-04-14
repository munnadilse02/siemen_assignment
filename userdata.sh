#!/bin/bash

# Update the package repository
yum update -y

# Install Ansible
yum install ansible -y

# Install Git (if needed for Ansible roles/playbooks)
yum install git -y

# Clone your Ansible playbook repository
git clone https://github.com/your_username/your_ansible_playbooks.git /tmp/ansible_playbooks

# Run Ansible playbook to configure the web application
ansible-playbook /tmp/ansible_playbooks/webapp.yml

# Start Nginx service (assuming Nginx is part of the webapp.yml playbook)
systemctl start nginx

# Enable Nginx to start on boot
systemctl enable nginx
