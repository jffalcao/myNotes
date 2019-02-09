reference: https://help.github.com/articles/connecting-to-github-with-ssh/

- Check for existing keys
- Generate SSH Key
- Keep default filename
- Entre passphrase <keepass>
- start ssh agent
- add ssh key to agent
- Copy the SSH Key to GitHub account (If not present, Install xclip)

```
$ ls -al ~/.ssh
$ ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
$ eval "$(ssh-agent -s)"
$ ssh-add ~/.ssh/id_rsa
$ sudo yum install xclip  #Optional
$ xclip -sel clip < ~/.ssh/id_rsa.pub
```
