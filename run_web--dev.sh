#!/bin/sh

# wait for PSQL server to start
sleep 10

cd /srv/www/sdupnz/sdupnz
# prepare init migration
su -m myuser -c "python manage.py makemigrations"
# migrate db, so we have the latest db schema
su -m myuser -c "python manage.py migrate"
# start development server on public ip interface, on port 8009
su -m myuser -c "python manage.py runserver 0.0.0.0:8009"
