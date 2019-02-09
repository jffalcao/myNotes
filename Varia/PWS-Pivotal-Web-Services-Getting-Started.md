Pivotal Web Services (https://console.run.pivotal.io/)  
1. Download the CLI  
2. Login to the CLI  

    $ cf login -a https://api.run.pivotal.io
    email: jfribeirofalcao@gmail.com  
    Paswword *******

Code  

    $ cf help  
    $ cd ~/workspace/
    $ git clone https://github.com/cloudfoundry-samples/spring-music  
    $ cd spring-music
    $ ./gradlew assemble  
    $ cf push  
    $ cf logs spring-music
    $ cf marketplace -s elephantsql --list the available plans for Postres DB  
    $ cf create-service elephantsql turtle my-spring-db  
    $ cf bind-service spring-music my-spring-db  
    $ cf restart spring-music  
    $ cf services  
    $ cf scale spring-music -i 2
    $ cf scale spring-music -m 1G  
    $ cf scale spring-music -k 512M  

----

Topics to explore:
How PCF Works 
https://docs.pivotal.io/pivotalcf/concepts

PCF Documentation 
https://docs.pivotal.io/pivotalcf/installing/pcf-docs.html

Installing PCF (IaaS-specific guides for installing PCF) 
https://docs.pivotal.io/pivotalcf/installing/

Learn more about the Spring Framework 
https://spring.io/guides