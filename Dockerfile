FROM node:10.15.3-alpine as base

WORKDIR /app

COPY package.json package-lock.json ./
RUN npm i


## Runtime
FROM node:10.15.3-alpine

LABEL maintainer="kanziw <kanziwoong@gmail.com>"

ENV NODE_ENV=production

WORKDIR /app

COPY package.json package-lock.json ./
RUN npm i

COPY index.js index.js

CMD ["node", "index.js"]
