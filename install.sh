#!/bin/bash

# Display the ASCII Art logo
echo" __  __ _           __  __   ____ _                 _ "
echo"|  \/  (_)_ __   ___\ \/ /  / ___| | ___  _   _  __| |"
echo"| |\/| | | '_ \ / _ \\  /  | |   | |/ _ \| | | |/ _` |"
echo"| |  | | | | | |  __//  \  | |___| | (_) | |_| | (_| |"
echo"|_|  |_|_|_| |_|\___/_/\_\  \____|_|\___/ \__,_|\__,_|"
echo""

# Install necessary dependencies
echo "Installing necessary dependencies...Subscribe To SLCAT_YT!"

# Step 1: Create keyring directory
sudo mkdir -p /etc/apt/keyrings

# Step 2: Add NodeSource GPG key
curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | sudo gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg

# Step 4: Update package list
sudo apt update

# Step 5: Install Node.js and Git
sudo apt install -y nodejs git

# Step 6: Clone the repository
git clone https://github.com/achul123/panel5

# Step 7: Navigate to the project directory
cd panel5

# Step 8: Install project dependencies
npm install

# Step 9: Run database seed script
npm run seed

# Step 10: Create a new user
npm run createUser

# Step 10: Starting Skyport
node .

echo "Installation Completed - Subscribe To SLCAT_YT!"  
