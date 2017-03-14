FROM python:3.6.0

ENV PYTHONUNBUFFERED 1  

# add requirements.txt to the image
ADD requirements.txt /srv/www/sdupnz/sdupnz/requirements.txt

# set working directory to /sdupnz/sdupnz
WORKDIR /srv/www/sdupnz/sdupnz

# install python dependencies
RUN pip install -r requirements.txt

# create unprivileged user
RUN adduser --disabled-password --gecos '' myuser
