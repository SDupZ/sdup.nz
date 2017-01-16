# Mairangi Bay Tennis Club

### New Container

`docker run -it -v c:/Users/Simon/development/lunchchat:/srv/www/lunchchat/lunchchat -p 8003 --name lunchchat sdupz/lunchchat`
`docker run -it -v ~/development/lunchchat:/srv/www/lunchchat/lunchchat -p 8000 --name lunchchat sdupz/lunchchat`
`docker run -it -v ~/development/sdup/lunchchat:/srv/www/lunchchat/lunchchat -p 8000-8050:80 -e VIRTUAL_HOST=lunchchat.dev --name lunchchat sdupz/lunchchat`
>>>>>>> 51bf9c97b4c9bad5977a73a91341a778110c9fed

### Sass Compiler

https://github.com/sass/node-sass/blob/master/README.md

`curl https://raw.githubusercontent.com/creationix/nvm/v0.16.1/install.sh | sh`
`source ~/.profile`
`nvm install 6.5.0`
`npm install node-sass`
`node compile.js`
