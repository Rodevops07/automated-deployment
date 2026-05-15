cd automated-deployment
echo "Pulling latest code from GitHub..."
git pull origin main

# Files ko web folder mein move karo
echo "Deploying to Apache..."
sudo cp index.html /var/www/html/index.html

# Log the update time
echo "Update successful at $(date)" >> /home/ec2-user/deploy.log
echo "Mission Accomplished! Refresh your browser."
