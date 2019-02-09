### Installing rpm from local download

Download latest rpm version of chrome from any Google page
Start a terminal on the download folder
$ sudo yum localinstall <google-chrome-stable_current_x86_64.rpm>


### Updating the google repo and Installing Chrome manually

    $ su -
    # cat << EOF > /etc/yum.repos.d/google-chrome.repo
    [google-chrome]
    name=google-chrome - \$basearch
    baseurl=http://dl.google.com/linux/chrome/rpm/stable/\$basearch
    enabled=1
    gpgcheck=1
    gpgkey=https://dl-ssl.google.com/linux/linux_signing_key.pub
    EOF 

    # yum install update
    # yum install google-chrome-stable