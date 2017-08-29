FROM node:6.9.1

EXPOSE 5002

ADD . /polisServer
WORKDIR /polisServer

RUN npm install
CMD npm start; sleep infinity
