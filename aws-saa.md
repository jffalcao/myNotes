# AWS Solution Architect - Associate
-------------------
### Reference on Safari Tech Videos Online:

#### AWS Certified Solutions Architect (Associate)
By: Richard A. Jones  
Publisher: Pearson IT Certification  
Publication Date: 18-JUN-2018  
https://proquestcombo-safaribooksonline-com.res.banq.qc.ca/video/certification/9780135229415


#### AWS Certified Solutions Architect - Associate
By: BackSpace Academy  
Publisher: Packt Publishing   
https://proquestcombo-safaribooksonline-com.res.banq.qc.ca/video/certification/9781788994361

### Notes
---------

Backspace Academy Video not up to date. To access mySQL instance from mySQL Workbench on your laptop follow the folowing instructions.

#### Creating a mySQL RDS Instance
- Create a new RDS Instance
- Choose mySQL
- Follow the wizard
- Save

**To Access from laptop**
- Public Accessibility must be set to Yes
- Go to VPC Enable DNS resolution and DNS Hostnames
- Modify mySQL Instance Public accessibility to Yes
- Save

#### Istalling and accessing instance trhough the mySQL Shell

**Installing**
```
sudo apt install mysql-client-core-5.7
```
**Connecting to instance and test**
https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_ConnectToInstance.html

```
mysql -h [endpoint] -P [port] -u admin -p

mysql> Show Databases;
mysql> Exit
```

