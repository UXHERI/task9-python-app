#!/bin/bash

set -e  # Stop on any error

cd /home/ubuntu/flaskapp

echo "Killing any existing Flask processes..."
pkill -f "python3 app.py" || echo "No Flask process running."

echo "Installing dependencies..."
pip3 install --break-system-packages -r requirements.txt

echo "Starting Flask app..."
nohup python3 app.py > /tmp/app.log 2>&1 &
