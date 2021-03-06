FROM node:13.13-alpine

WORKDIR /src/app/

ADD ./package.json .

RUN ["npm", "install"]

COPY . .

RUN chown -R node:node /src/app

USER node
