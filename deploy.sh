#!/bin/bash
#Kill any existing server running on port 30192
fuser -k 30192/tcp

#Start the Python HTTP server on port 30192
echo "Starting the web server on port 30192..."
nohup python3 -m http.server 30192 &

echo "Website is now accessible at http://localhost:30192/"
