FROM node:8.15.1-alpine

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install -qy

COPY . .

EXPOSE 3001