To amend last commit message    
```
git commit --amend
i           
```   
(to edit)
shift+z z to save and exit  

remove files after updating .gitignore
```
git rm -r --cached .
git add -A
git commit -am 'Removing ignored files'
```
first command untracks all files  
second command adds back all files except those that match .gitignore
