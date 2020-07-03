#!/bin/sh

until nc -z -v -w30 ${DB_SERVER_HOST} ${DB_SERVER_PORT}
do
    echo 'Waiting for db connection...'
    sleep 5
done

envsubst < /tmp/joc_install.xml.template > ./joc_install.xml
./setup.sh -u joc_install.xml && tail -f /dev/null
