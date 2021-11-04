git clone https://github.com/plankanban/planka.git
cd planka
git pull

# node:latest is not supported by planka at this time
sed 's/FROM node AS/FROM node:lts AS/' Dockerfile

cp ../server/config/env/production.js ./server/config/env/production.js
cp ../server/config/security.js ./server/config/security.js

docker build . -t tasks
