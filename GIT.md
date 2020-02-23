# GIT Cheatsheet

```
$ git remote -v

[Using SSH] 
    $ git remote set-url origin git@github.com:USERNAME/REPOSITORY.git 
    $ git clone git@github.com:<USER>/<PROJECT>.git

[Using HTTPS]  
    $ git remote set-url origin https://github.com/USERNAME/REPOSITORY.git
    $ git clone https://github.com/<USER>/<PROJECT>.git
```

## Branching
- Creating a branch
```
git branch
git branch bash_script
git branch
git checkout bash_script
git branch
```
- Making changes in the branch
```
touch node-project-setup.sh
sudo chmod +x node-project-setup.sh
ls -l
```
- Add changes to the branch
```
git status
git add .
git status
git commit -m "add node-project-setup.sh file"
git status
```
- Pushing changes to the feature brach on the remote
```
git remote -v
git push --set-upstream origin bash_script
git remote -v
```
- Modiying the master branch
```
git checkout master
touch test.md
git status
git add .
git status
git commit -m "Test merge in master"
git status
git remote -v
git push
git status
```
- Merging feature branch to master
```
git checkout master
git branch
git merge bash_script
git status
git push
```
- Create and checkout a branch in one step
```
git checkout -b dummy
git branch
```
- Delete a branch locally
```
git checkout master
git branch
git branch -d dummy
git branch
```
- Delete a remote branch
```
git push --delete origin bash_script
```
## Tagging

`$ Git tag -a <tag> -m "Message"`  

List of tags:  
`$ Git Tag --list`
or
`$ Git Tag -l`

To push a single tag:  
`git push origin <tag_name>`

**Moving a tag to a different commit**

https://stackoverflow.com/questions/8044583/how-can-i-move-a-tag-on-a-git-branch-to-a-different-commit

```
git tag -a v0.1 -m "Chapter 1: hello Wolrd completed" -f
git push origin :refs/tags/v0.1
git push origin --tags
```

***

## Cloning and Checkout

`$ git clone`  

will give you the whole repository.
After the clone, you can list the tags with $ git tag -l and then checkout a specific tag:  

`$ git checkout tags/<tag_name>`  

Even better, checkout and create a branch (otherwise you will be on a branch named after the revision number of tag):

`$ git checkout tags/<tag_name> -b <branch_name>`

Reverting back to the most recent code base

`$ git checkout master`


## Fix a Git Detached HEAD

[Stackoverflow](https://stackoverflow.com/questions/10228760/fix-a-git-detached-head)

**Delete the changes on the HEAD**

```
    git checkout master
    git checkout -- <file>
```

**Keep the changes on the HEAD**

```
   # find the commit if last
   git log -n 1
   git checkout master
   git branch tmp <commit-hash>
   git merge tmp 
```




