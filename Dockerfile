ARG ALPINE_NODE_TAG=8
FROM mhart/alpine-node:$ALPINE_NODE_TAG

WORKDIR /app

COPY package.json ./

RUN npm install -g

COPY . .

RUN scrapoxy
