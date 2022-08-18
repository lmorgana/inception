

echo "yep"
#sleep 2
#if [ ! -d "/var/lib/mysql/wordpress" ]; then

    mysql_install_db
    service mysql start
    echo "database start created"
    sleep 5
    mysql -e "CREATE USER '${DB_LOGIN}'@'localhost' IDENTIFIED BY '${DB_PASS}';" &&\
   	mysql -e "CREATE DATABASE IF NOT EXISTS wordpress;" &&\
   	mysql -e "GRANT ALL PRIVILEGES ON *.* TO '${DB_LOGIN}'@'localhost' IDENTIFIED BY '${DB_PASS}';" &&\
   	mysql -e "FLUSH PRIVILEGES;"

#    mysqladmin -u root password "{$ROOT_PASS}"
    service mysql stop
    echo "database created"
#fi
mysqld_safe