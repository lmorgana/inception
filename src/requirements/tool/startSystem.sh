#!/bin/sh
echo "Starting"
if grep -q "127.0.0.1 lmorgana.42.fr" /etc/hosts ; then
echo "Changing the hosts"
else
echo "Changing the hosts"
echo '127.0.0.1 lmorgana.42.fr' >> /etc/hosts
echo '127.0.0.1 www.lmorgana.42.fr' >> /etc/hosts
fi