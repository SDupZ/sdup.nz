#!/bin/sh

# wait for PSQL server to start
sleep 10

cd /srv/www/sdupnz/sdupnz
# prepare init migration

python manage.py makemigrations

python manage.py migrate

# python manage.py collectstatic --noinput

/etc/init.d/nginx start

uwsgi --ini /srv/www/sdupnz/sdupnz/config/nginx/sdupnz_uwsgi.ini
