SSH_USER="ubuntu"
SSH_HOST="52.35.169.89"
SSH_KEY="/home/ubuntu/01-login/ssh/sacume n-keypair.pem"

# SSH into the EC2 instance and copy your code changes
ssh -i "$SSH_KEY" "$SSH_USER"@"$SSH_HOST" <<EOF
  cd /home/ubuntu/01-login
  echo "Hello, world!"
  echo "$pwd"
  sudo apt update
  sudo apt install python3-pip -y
  git pull origin master
  pip install -r requirements.txt
  python3 manage.py migrate
  python3 manage.py runserver 0.0.0.0:8000
  # Restart your application if needed
EOF