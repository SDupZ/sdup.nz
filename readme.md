# Blogsite

### New Container

`docker run -it -v c:/Users/Simon/development/blogsite:/srv/www/blogsite/blogsite -p 8003 --name blogsite sdupz/blogsite`
`docker run -it -v ~/development/blogsite:/srv/www/blogsite/blogsite -p 8000 --name blogsite sdupz/blogsite`
`docker run -it -v ~/sdup/blogsite:/srv/www/blogsite/blogsite -p 8000-8050:80 -e VIRTUAL_HOST=blogsite.dev --name blogsite sdupz/blogsite`

### Sass Compiler

https://github.com/sass/node-sass/blob/master/README.md

`curl https://raw.githubusercontent.com/creationix/nvm/v0.16.1/install.sh | sh`
`source ~/.profile`
`nvm install 6.5.0`
`npm install node-sass`
`node compile.js`
