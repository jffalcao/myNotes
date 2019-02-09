**Verify that Java is installed**  
$ java -version   

**Download and untar**   
$ cd /opt/  
$ sudo wget http://www.us.apache.org/dist/activemq/5.13.2/apache-activemq-5.13.2-bin.tar.gz  
$ sudo tar xzf apache-activemq-5.13.2-bin.tar.gz  

**Start the service**   
$ cd apache-activemq-5.13.2  
$ sudo ./bin/activemq start  

**Check if service is running on default port 61616**  
$ sudo netstat -tulpn | grep 61616   


