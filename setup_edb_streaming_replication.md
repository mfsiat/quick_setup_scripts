## Setup Enterprise Database 11 Streaming Replication 

### Setup 

- Install repository configuration 
```
yum -y install https://yum.enterprisedb.com/edbrepos/edb-repo-latest.noarch.rpm
```
- Replace 'USERNAME:PASSWORD' below with your username and password for the EDB repositories
- Visit https://www.enterprisedb.com/accounts/profile to get your username and password
- Change the username and password on **`yum.repo.d/edb.repo`**
- Install epel repository 
```
yum -y install https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
```
- Install **`edb-as11-server`**
```
yum install edb-as11-server
```
- EDB server has been installed now initiate the database
```
PGSETUP_INITDB_OPTIONS="-E UTF-8" /usr/edb/as11/bin/edb-as-11-setup initdb
```
- Check with systemctl 
```
systemctl status edb-as-11
systemctl start edb-as-11
systemctl enable edb-as-11
```
- To connect to enterprise db we need a user account 
- By default an user account has already been created by EDB 
- It is enterprisedb, change or add a password for it
- Type: **`passwd enterprisedb`**
- Connect to the db
- Login with enterprisedb account: **`su - enterprisedb`
```
psql -p 5444 -d postgres
```
- To change the default password: **`ALTER USER enterprisedb WITH PASSWORD ‘12345';`**

### Setup Host Base Configuration 

- Configure the hostfiles
```
cd /var/lib/edb/as11/data/
vim pg_hba.conf
# "local" is for Unix domain socket connections only
local   all             all                                      peer
host    all             all             0.0.0.0/0              	 trust
# IPv4 local connections:
host    all             all             127.0.0.1/32             ident
host    all             all             192.168.25.136/32        md5 [Host machine IP]
```
- Restart the edb
- Add edb port on firewall and reload the firewall

### Extras

- To connect to a postgresql server from host with psql type the following. 
```
psql -h HOST_IP -p PORT -d DB_NAME -U DB_USER
```