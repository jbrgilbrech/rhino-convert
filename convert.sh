#!/bin/bash
# Created by Chadano 
# Modified by Billy G.

mkdir -p ~/convert/assets && cd ~/convert || exit
git clone https://github.com/rollingrhinoremix/assets ~/creation/assets
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get autoremove -y

# Move all required assets to the correct directories
mv ~/convert/assets/rolling_rhino.png /usr/share/backgrounds
mv ~/convert/assets/rolling_rhino-dark.png /usr/share/backgrounds
mv ~/convert/assets/.bash_aliases /etc/skel
rm -rf ~/.bash_aliases 
rm -rf ~/.bashrc
mv ~/convert/assets/.bash_aliases ~
mv ~/convert/assets/.bashrc ~
mv ~/convert/assets/.sources.sh ~

# Install rhino-config onto system 
mkdir ~/creation/rhino-config
cd ~/creation/rhino-config
wget -q https://github.com/rollingrhinoremix/rhino-config/releases/latest/download/rhino-config
chmod +x ~/creation/rhino-config/rhino-config
mv ~/creation/rhino-config/rhino-config /usr/bin

# Install rhino-deinst onto system
mkdir ~/creation/rhino-deinst
cd ~/creation/rhino-deinst
wget -q https://github.com/rollingrhinoremix/rhino-deinst/releases/latest/download/rhino-deinst
chmod +x ~/creation/rhino-deinst/rhino-deinst
mv ~/creation/rhino-deinst/rhino-deinst /usr/bin

# Tell the user that the script has completed
echo "---
The conversion script has successfully completed. You are now running Rolling Rhino Remix
---"
echo "---
Please reboot and then follow the quick-start guide on our wiki.
---"
