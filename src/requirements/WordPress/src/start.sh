sleep 20;
if  [ ! -f /var/www/wordpress/wp-config.php ]; then
    wp core --allow-root download --force
    echo "Core Downloaded"
    sleep 5;
    while  [ ! -f /var/www/wordpress/wp-config.php ]; do
        wp core config --allow-root --dbname=wordpress --dbuser=$DB_LOGIN --dbpass=$DB_PASS --dbhost=mariadb:3306
    done
    echo "Creating Users"
    wp core install --allow-root --url='lmorgana.42.fr' --title='lmorgana Inception' --admin_user=$WP_USER1_LOGIN --admin_password=$WP_USER1_PASS  --admin_email="lmorgana@gmail.com" --path='/var/www/wordpress';
    wp user create --allow-root $WP_USER2_LOGIN user2@user.com --user_pass=$WP_USER2_PASS --role=author
fi
echo "All works, get https://lmorgana.42.fr"
php-fpm7.3 --nodaemonize