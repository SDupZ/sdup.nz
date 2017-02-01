# sdup.nz

### New Container

`docker run -it -v c:/Users/Simon/development/sdup.nz:/srv/www/sdupnz/sdupnz -p 8003 --name sdupnz sdupz/sdupnz`
`docker run -it -v ~/sdup/sdup.nz:/srv/www/sdupnz/sdupnz -p 8000-8050:80 -e VIRTUAL_HOST=sdup.dev --name sdupnz sdupz/sdupnz`

### Sass Compiler

https://github.com/sass/node-sass/blob/master/README.md

`curl https://raw.githubusercontent.com/creationix/nvm/v0.16.1/install.sh | sh`
`source ~/.profile`
`nvm install 6.5.0`
`npm install node-sass`
`node compile.js`
