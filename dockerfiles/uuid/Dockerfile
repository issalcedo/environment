FROM node:14-alpine

RUN npm i -g uuid

ENV NODE_PATH=/usr/local/lib/node_modules

CMD [ "node", "-e", "const { v4: uuid } = require('uuid'); console.log(uuid());"]