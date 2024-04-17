## Managing permissions for the 'player' user using the /etc/sudoers.d/player-permissions file

The `/etc/sudoers.d/player-permissions` file is used to define the sudo permissions for the 'player' user. Here's how you can manage these permissions:

### View the current permissions

*Use the `cat` command to view the current permissions*

```
sudo cat /etc/sudoers.d/player-permissions
```

### Edit the permissions

*Use the `visudo` command to safely edit the permissions. This command checks the syntax of the file before saving, which can prevent syntax errors from locking you out of your system*

```
sudo visudo -f /etc/sudoers.d/player-permissions
```

In the editor, you can add lines like the following to give the 'player' user specific permissions:

```
player ALL=(ALL) NOPASSWD: /usr/bin/apt-get
```

This line allows the 'player' user to use the `apt-get` command without a password. Replace `/usr/bin/apt-get` with the command you want to allow.

### Save and exit

After editing the permissions, save and exit the editor. If you're using the default `vi` editor, you can do this by typing `:wq` and pressing Enter.

### Verify the changes

*Use the `cat` command again to verify the changes*

```
sudo cat /etc/sudoers.d/player-permissions
```
