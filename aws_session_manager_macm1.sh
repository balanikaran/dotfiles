# navigate to home dir
cd ~

# download the session manager binary zip
curl "https://s3.amazonaws.com/session-manager-downloads/plugin/latest/mac_arm64/sessionmanager-bundle.zip" -o "sessionmanager-bundle.zip"

# unzip
unzip sessionmanager-bundle.zip

# install
sudo ./sessionmanager-bundle/install -i /usr/local/sessionmanagerplugin -b /usr/local/bin/session-manager-plugin

# verify
session-manager-plugin


##########      DANGER ZONE     ##########
########## UNINSTALLATION STEPS ##########
sudo rm -rf /usr/local/sessionmanagerplugin
sudo rm /usr/local/bin/session-manager-plugin