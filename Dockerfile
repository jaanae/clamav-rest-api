FROM node:12.16.3-stretch-slim

LABEL maintainer="Piotr Antczak <antczak.piotr@gmail.com>"
WORKDIR /clamav-rest-api

COPY src ./src/
COPY package.json package-lock.json ./

RUN npm install --production 

USER node:node
ENTRYPOINT ["npm", "start"]
