#!/bin/sh

# Build the frontend
npm run build
echo "BUILD COMPLETED"

# Reload Nginx (assuming you're using Nginx on macOS)
sudo nginx -s reload
echo "RELOADING NGINX COMPLETED"

# Restart Flask API (assuming you're using Flask in a virtual environment)

sudo launchctl kickstart system/flask-react-app.service  # Replace with appropriate launchctl command

echo "RESTARTING FLASK API COMPLETED"
