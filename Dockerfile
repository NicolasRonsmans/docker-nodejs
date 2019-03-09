FROM node:8.15.1-alpine

# CLIENT
WORKDIR /usr/src/app/client

COPY client/package*.json ./

RUN npm install -qy

COPY client/ ./

RUN npm run build
RUN rm -rf ./node_modules

# SERVER
WORKDIR /usr/src/app/server

COPY server/package*.json ./

RUN npm install -qy

COPY server/ ./

EXPOSE 3000
