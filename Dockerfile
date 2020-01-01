FROM ubuntu:18.04

# Create app directory
WORKDIR /usr/src/app

RUN mkdir $HOME/.ssh

RUN apt-get update -y && apt-get -y install curl wget zip python build-essential git ca-certificates python-pip
RUN pip install awscli --upgrade --user

## RUN apt-get -y install nodejs && npm i npm@latest -g

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./
COPY deploy.sh ./
COPY install-node.sh ./
RUN wget https://nodejs.org/download/release/v12.14.0/node-v12.14.0-linux-x64.tar.gz
RUN ./install-node.sh

## COPY next.config.js  ./

## RUN npm install
# If you are building your code for production
# RUN npm install --only=production

# CMD [ "npm", "start" ]

CMD [ "/bin/bash" ]