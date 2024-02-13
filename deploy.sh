SSH_USER="ubuntu"
SSH_HOST="52.35.169.89"
SSH_KEY="/home/ubuntu/sacumen-keypair.pem"

# SSH into the EC2 instance and copy your code changes
ssh -i "$SSH_KEY" "$SSH_USER"@"$SSH_HOST" <<EOF
  cd /home/ubuntu/01-login
  git pull origin master
  python3 manage.py runserver
  # Restart your application if needed
EOF