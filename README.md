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

# start workbench
mysql-workbench-community  




