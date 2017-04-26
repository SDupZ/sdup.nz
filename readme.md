# sdup.nz

### New Container

`docker run -it -v c:/Users/Simon/development/sdup.nz:/srv/www/sdupnz/sdupnz -p 8000-8050:80 -e VIRTUAL_HOST=sdup.dev --name sdupnz sdupz/sdupnz`
`docker run -it -v ~/sdup/sdup.nz:/srv/www/sdupnz/sdupnz -p 8000-8050:80 -e VIRTUAL_HOST=sdup.dev --name sdupnz sdupz/sdupnz`
font
### Sass Compiler

https://github.com/sass/node-sass/blob/master/README.md

`curl https://raw.githubusercontent.com/creationix/nvm/v0.16.1/install.sh | sh`
`source ~/.profile`
`nvm install 6.5.0`
`npm install node-sass`
`node compile.js`

docker cp latest_database_backup.sql sdupnz_db_1:/


 pg_dump -i -U docker -F c -b -v -f 'latest_database_backup.sql' postgres

 dropdb -U postgres postgres
 createdb -O postgres -U postgres postgres -T template0 -E 'UTF8'
 pg_restore -U postgres -s -d postgres 'latest_database_backup.sql'
 pg_restore -U postgres -a --disable-triggers -d postgres 'latest_database_backup.sql'

 docker-compose -f production.yml up -d
