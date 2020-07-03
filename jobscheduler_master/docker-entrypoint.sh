#!/bin/sh

until nc -z -v -w30 ${DB_SERVER_HOST} ${DB_SERVER_PORT}
do
    echo 'Waiting for db connection...'
    sleep 5
done

envsubst < /tmp/jobscheduler_install.xml.template > ./jobscheduler_install.xml
./setup.sh -u jobscheduler_install.xml

/opt/sos-berlin.com/jobscheduler/scheduler/bin/jobscheduler.sh start without-change-user && tail -f /dev/null
