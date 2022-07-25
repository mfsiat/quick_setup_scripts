## Setup postgres 12 on cent os 7 
```
sudo yum update -y && sudo yum upgrade -y
sudo yum install https://download.postgresql.org/pub/repos/yum/reporpms/EL-7-x86_64/pgdg-redhat-repo-latest.noarch.rpm
sudo yum install postgresql12-server
```
## Initiate the database

- Run this command at first after installing the EnterpriseDB Server.
```
sudo /usr/pgsql-12/bin/postgresql-12-setup initdb