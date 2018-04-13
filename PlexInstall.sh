sudo apt-get install apt-transport-https
sudo wget https://dev2day.de/pms/dev2day-pms.gpg.key
sudo apt-key add dev2day-pms.gpg.key
sudo wget -O - https://dev2day.de/pms/dev2day-pms.gpg.key | sudo apt-key add -
echo "deb https://dev2day.de/pms/ stretch main" | sudo tee /etc/apt/sources.list.d/pms.list
sudo apt-get install -t stretch plexmediaserver
sudo nano /etc/default/plexmediaserver.prev

Your terminal window will fill with a big text document. Look for the line that says PLEX_MEDIA_SERVER_USER=plex. Delete “plex” and type in “pi,” so that the line reads PLEX_MEDIA_SERVER_USER=pi.

Now hit CTRL+X to exit. Type Y for “yes” to save your changes and hit Enter to stick with the same old file name. Then, in the terminal, type:

sudo service plexmediaserver restart
