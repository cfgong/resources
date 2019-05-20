# Setup
[Git workshop](https://github.com/nuitrcs/gitworkshop)  
git clone
```
git clone <remote_repo_url> other-name
```
[Adding an existing project to GitHub using the command line](https://help.github.com/articles/adding-an-existing-project-to-github-using-the-command-line/)  
```
git init  
git add .   
git commit -m "initial commit"    
git remote add origin <remote repository URL>  
git remote -v  
git push -u origin master  
```
Connect to remote Git respository:  
```
git remote add origin <remote_repo_url>  
```
See all remote branches
```
git branch -r
```
Track remote branch  
```
git checkout --track origin/<branch_name>  
```
git pull: There is no tracking information for the current branch.
```
git branch --set-upstream-to=origin/master master
git pull
```
Make a branch:
```
git checkout -b <branch_name>
```
Push upstream
```
git push -u origin <branch_name>
```
## Account Setup
set new username:  
```
git config credential.username "<username>"  
```
list config details:    
```
git config --list
```   
Cloning a private repo:  
git clone remote repository not found, try:  
```
git clone https://username@github.com/username/repo_name
```
# Resources
[gitready](http://gitready.com/)  
[try git](https://try.github.io/)  
[git - the simple guide (simple walkthrough)](https://rogerdudler.github.io/git-guide/)   
[interative git branching tutorial](https://learngitbranching.js.org/)
