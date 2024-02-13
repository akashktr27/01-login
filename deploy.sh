SSH_USER="ec2-user"
SSH_HOST="your-ec2-instance-ip"
SSH_KEY="path/to/your/private-key.pem"

# SSH into the EC2 instance and copy your code changes
ssh -i "$SSH_KEY" "$SSH_USER"@"$SSH_HOST" <<EOF
  cd /path/to/your/project
  git pull origin master
  # Restart your application if needed
EOF