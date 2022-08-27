if [ ! -d "/var/lib/mysql/wordpress" ]; then
    service mysql start
    echo "database start created"
    sleep 5
    mysql -e "CREATE USER '${DB_LOGIN}'@'%' identified by '${DB_PASS}';" &&\
   	mysql -e "CREATE DATABASE IF NOT EXISTS wordpress;" &&\
   	mysql -e "GRANT ALL PRIVILEGES ON *.* TO '${DB_LOGIN}'@'%' identified by '${DB_PASS}';" &&\
   	mysql -e "FLUSH PRIVILEGES;"

    service mysql stop
    echo "database created"
fi
mysqld_safe