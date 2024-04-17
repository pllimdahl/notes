---
tags: CommonTasks
---
#CommonTasks #admin 

`wget https://storage.googleapis.com/cinemataztic-teo/Repo/cinemataztic-player_1.5.1_all.deb`

`sudo apt-get update && sudo apt-get dist-upgrade`

`sudo apt install ./cinemataztic-player_1.5.1_all.deb`

`apt list --installed | grep google`

`sudo less /var/log/apt/term.log`

`sudo systemctl restart cinemataztic-player`

### GOOGLE:


`sudo apt-get update && sudo apt-get --only-upgrade install google-chrome-stable`


### on 18.04:

`wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb && sudo dpkg -i google-chrome-stable_current_amd64.deb`

### or add to sources for later:

`sudo nano /etc/apt/sources.list.d/chromeman.list`

chrome.list
`deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main`

### add google pub gpg key

`sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 4EB27DB2A3B88B8B`
