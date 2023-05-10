# Installation guidelines on Ubuntu

sudo apt install mysql-server  
sudo systemctl start mysql.service  

# start mysql
sudo mysql  

# If above throws an error "ERROR 2002 (HY000): Can't connect to local MySQL server through socket '/var/run/mysqld/mysqld.sock' " do below

mkdir -p /var/run/mysqld  
chown mysql:mysql /var/run/mysqld  

