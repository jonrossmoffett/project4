from node:alpine

WORKDIR /usr/nodeapp

copy ./ ./

RUN npm install