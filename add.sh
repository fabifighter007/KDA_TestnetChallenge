#!/bin/bash

echo "** Script to add a new Bond to this system **"


read -p "Unique Folder Name: " dirname
read -p "bond [key:date]: " bond
read -p "Privatekey: " private
read -p "Infura API Token: " infura
read -p "Gaslimit [30000]: " gas
mkdir -p "$dirname"
cd "$dirname"

file=".env"
echo "DEFAULT_ENV=kovan" >> $file
echo "# Infura project ID" >> $file
echo "INFURA_API_TOKEN=$infura" >> $file
echo "PACT_PROPOSE_GAS_LIMIT=$gas" >> $file
echo "" >> $file
echo "# Relay-app settings (always required)" >> $file
echo "BOND_NAME=$bond" >> $file
echo "PACT_PRIVATE_KEY="$private >> $file
