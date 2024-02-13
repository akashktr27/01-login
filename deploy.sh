#!/bin/bash

PRIVATE_KEY_PATH="ssh/sacumen-keypair.pem"
USERNAME="ubuntu"
INSTANCE_IP="52.35.169.89"
REPO_DIRECTORY="/home/ubuntu/01-login/ssh"
ssh -o "StrictHostKeyChecking no" -i "$PRIVATE_KEY_PATH" "$USERNAME@$INSTANCE_IP"<< EOF
   cd /home/ubuntu/01-login && git reset --hard origin/master
EOF
