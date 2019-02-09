$ cd /etc/yum.repos.d/  
$ sudo atom .  
atom: Create New File **mongodb-org-3.2.repo**  
For the latest stable release of MongoDB  

    [mongodb-org-3.2]  
    name=MongoDB Repository  
    baseurl=https://repo.mongodb.org/yum/redhat/$releasever/mongodb-org/3.2/x86_64/  
    gpgcheck=1  
    enabled=1  
    gpgkey=https://www.mongodb.org/static/pgp/server-3.2.asc`  


**To install the latest stable version of MongoDB**  
$ sudo yum install -y mongodb-org

**To install a specific release of MongoDB**  
$ sudo yum install -y mongodb-org-3.2.5 mongodb-org-server-3.2.5 mongodb-org-shell-3.2.5 mongodb-org-mongos-3.2.5 mongodb-org-tools-3.2.5
