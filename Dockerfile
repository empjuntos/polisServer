FROM node:6.9.1

EXPOSE 5000

ADD . /polisServer
WORKDIR /polisServer

RUN npm install

CMD npm start; sleep infinity
