# deploy_script.sh
# Update system and install git
sudo yum update -y
sudo yum install git -y

# Clone or pull the latest version of your app from GitHub
cd /home/ec2-user
if [ -d "your-app" ]; then
  cd your-app && git pull
else
  git clone https://github.com/rk26131/CI-CD.git your-app
fi

# Run your application (modify as needed for your app)
cd your-app
python3 app.py
