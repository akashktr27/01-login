SSH_USER="ubuntu"
SSH_HOST="52.35.169.89"
SSH_KEY="/home/ubuntu/01-login/ssh/sacumen-keypair.pem"

# SSH into the EC2 instance and copy your code changes
ssh -i "$SSH_KEY" "$SSH_USER"@"$SSH_HOST" <<EOF
  cd /home/ubuntu/01-login
  sudo apt updatec
  sudo apt install python3-pip -y
  git pull origin master
  pip install -r requirements.txt
  python3 manage.py migrate
  python3 manage.py runserver 0.0.0.0:8000
  # Restart your application if needed
EOF