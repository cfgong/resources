setup:
```
git config --global user.email "you@example.com"
git config --global user.name "Your Name"
```

display git config:
```
git config --global --list
```
unset a setting  (global):
```
git config --global --unset user.name
```
for multiple configs:
```
git config --global --unset-all user.name
```

save git credential details
```
git config --global credential.helper store
```