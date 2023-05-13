# become root and install mysql-server
sudo su  
apt install mysql-server  

# OR if you do not wish to become root, may face below issues while installation


# Installation guidelines on Ubuntu

sudo apt install mysql-server  
sudo systemctl start mysql.service  

# start mysql
sudo mysql  

# if error comes "ERROR 1045 (28000): Access denied for user 'root'@'localhost' (using password: YES)" Do below

sudo /etc/init.d/mysql stop  

sudo mysqld_safe --skip-grant-tables &  


# If above throws an error "ERROR 2002 (HY000): Can't connect to local MySQL server through socket '/var/run/mysqld/mysqld.sock' " do below or "mysqld_safe Directory '/var/run/mysqld' for UNIX socket file don't exists" Do below

mkdir -p /var/run/mysqld  
chown mysql:mysql /var/run/mysqld  
sudo mysqld_safe --skip-grant-tables &  

# O/P from above should be "2023-05-10T10:21:40.717980Z mysqld_safe Logging to '/var/log/mysql/error.log'.2023-05-10T10:21:40.756315Z mysqld_safe Starting mysqld daemon with databases from /var/lib/mysql"

# now since you use mysql with skip grant tables mode, you will NOT be able to change or reset the password or use ALTER USER method to change root user authentication mode

# start mysql
sudo mysql   


# now install mysql-workbench 
sudo snap install mysql-workbench-community  

# connecting mysql-workbench-community with mysql-server installed on local machine
# open mysql
sudo mysql  
# create a user (any username, herein we call it user) & a password (replace the word P@ssW0rd with password you want)
mysql>CREATE USER 'user'@'localhost' IDENTIFIED BY 'P@ssW0rd';   
# Give the created user all privileges
GRANT ALL ON *.* TO 'user'@'localhost';   
FLUSH PRIVILEGES;   

# now start myworkbench
mysql-workbench-community;  
# go to mysql connection and press +
# selecte standarf connction method TCP/IP and put username and password you used above
# Test connection


# Uninstalling mysql
sudo apt-get remove --purge *mysql\*   
sudo apt-get autoremove   
sudo apt-get autoclean   


