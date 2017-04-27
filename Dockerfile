FROM python:3.6.0

ENV PYTHONUNBUFFERED 1

RUN apt-get -y upgrade
RUN apt-get -y update

RUN apt-get -y install nginx

RUN apt-get update && apt-get install -y \
        libmemcached11 \
        libmemcachedutil2 \
        libmemcached-dev \
        libz-dev

RUN ln -s /srv/www/sdupnz/sdupnz/config/nginx/sdupnz_nginx.conf /etc/nginx/sites-enabled/

# add requirements.txt to the image
ADD requirements.txt /srv/www/sdupnz/sdupnz/requirements.txt

# set working directory to /sdupnz/sdupnz
WORKDIR /srv/www/sdupnz/sdupnz

# install python dependencies
RUN pip install -r requirements.txt

# create unprivileged user
RUN adduser --disabled-password --gecos '' myuser
