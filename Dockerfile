FROM node:6.9.1

EXPOSE 5000

ENV DATABASE_URL=postgres://polis:polis@polis-postgres:5432/polisserver

ADD . /polisServer
WORKDIR /polisServer

RUN npm install

CMD node app.js