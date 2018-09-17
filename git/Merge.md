# Merge
### Issues related to merging
[Git refusing to merge unrelated histories on rebase](https://stackoverflow.com/questions/37937984/git-refusing-to-merge-unrelated-histories-on-rebase)  
```
git pull origin master --allow-unrelated-histories  
```

To commit merge conflicts, first resolve conflicts and then  
```
git add .
git commit
```
Shift+Z+Z to to save that commit message  
