#!/bin/bash

APP_DIR=/home/ubuntu/flaskapp
LOG_FILE=$APP_DIR/app.log

# Go to app directory
cd $APP_DIR

# Stop any existing Flask app (optional)
pkill -f "python3 app.py"

# Install dependencies
pip3 install --break-system-packages -r requirements.txt

# Start Flask app in background
nohup python3 app.py > $LOG_FILE 2>&1 &
