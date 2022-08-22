FROM node:16-alpine

RUN mkdir -p /home/node/app/hello-bootcamp/node_modules && chown -R node:node /home/node/app

WORKDIR /home/node/app/hello-bootcamp

COPY package*.json ./

USER node

RUN npm i --save

COPY --chown=node:node . .

EXPOSE 8080

CMD [ "node", "server.js" ]
