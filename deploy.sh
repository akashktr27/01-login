#!/bin/bash

# Set the path to your private key file
PRIVATE_KEY_PATH="/home/ubuntu/01-login/ssh/sacumen-keypair.pem"

# Set the username to connect with (default is "ec2-user" for Amazon Linux instances)
USERNAME="ubuntu"

# Set the public IP address or DNS name of your EC2 instance
INSTANCE_IP="52.35.169.89"

# Set the path to the directory where your git repository is located on the EC2 instance
REPO_DIRECTORY="/home/ubuntu/01-login"

# SSH connection command to perform a git pull
ssh -i "$PRIVATE_KEY_PATH" "$USERNAME@$INSTANCE_IP" << EOF
  cd "$REPO_DIRECTORY"
  git pull origin main  # Change "main" to your branch name if different
EOF
