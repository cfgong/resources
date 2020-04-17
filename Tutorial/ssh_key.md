# Set up SSH public-key authentication to connect to a remote system - Quick notes

*Shortened version of [these instructions](https://kb.iu.edu/d/aews)*

1. On your computer (used to access remote host), generate RSA keys:
```
ssh-keygen -t rsa
```
- You will be prompted for a `Filename` of key pair and `Password`
- `Filename`: enter filename (ex. `my_ssh_key`) or just `ENTER` for default filename (~/.ssh/id_rsa for RSA keys) 
- `Password`: enter password or just `ENTER` for no password protection

2. Copy public key onto remote server
- If you don't already have a `~/.ssh/authorized_keys` file:
```
mkdir -p ~/.ssh
touch ~/.ssh/authorized_keys
```
- Then copy key:
```
scp ~/.ssh/id_rsa.pub username@host.edu:~/.ssh/
```

3. Log onto your remote (using password-based authentication) and then add your public key to `~/.ssh/authorized_keys`
```
ssh username@host.edu
```
4. Add contents of your public key to `/.ssh/authorized_keys`
```
cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys
```
- You can now delete your public key if you don't want to save a backup copy
```
rm ~/.ssh/id_rsa.pub
```
5. Set up proper `.ssh` folder permissions
```
chmod 700 .ssh
chmod 600 .ssh/authorized_keys
```
6. Now you should be able to log onto the remote with your ssh key
```
ssh username@host.edu
```

# References:
- [Set up SSH public-key authentication to connect to a remote system](https://kb.iu.edu/d/aews)
- [Stack Overflow - SSH failed public key authentication](https://unix.stackexchange.com/questions/163570/ssh-failed-public-key-authentication)