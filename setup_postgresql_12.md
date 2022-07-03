## Setup postgres 12 on cent os 7 

sudo yum install https://download.postgresql.org/pub/repos/yum/reporpms/EL-7-x86_64/pgdg-redhat-repo-latest.noarch.rpm
sudo yum install postgresql12-server

## Initiate the database
sudo /usr/pgsql-12/bin/postgresql-12-setup initdb