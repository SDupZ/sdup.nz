#!/bin/bash

/etc/init.d/postgresql start

/etc/init.d/nginx start

/etc/init/uwsgi.conf start

/usr/local/bin/uwsgi --emperor /etc/uwsgi/vassals --logto /var/log/uwsgi.log

python /srv/www/sdupnz/sdupnz/manage.py migrate

/bin/bash
