#!/bin/bash

echo "Updating the Github-Repo..."
git pull
echo ""
echo "Stopping docker..."
./stop.sh
echo ""
echo "Updating relay-app..."
docker pull kadena/relay-app
echo ""
echo "Starting docker..."
./startup.sh
echo ""
echo "Finished. Updated Repo and relay-app"
