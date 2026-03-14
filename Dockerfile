FROM node:18.20.8

RUN npm install -g npm@9.1.3

ADD package.json .
ADD index.js .
ADD build .
COPY . .
RUN npm install


CMD [ "node", "index.js" ]
