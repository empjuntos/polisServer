FROM node:6.9.1

EXPOSE 5000

ENV DATABASE_URL=postgres://polis:polis@polis-postgres:5432/polisserver
ENV DATABASE_FOR_READS_NAME=DATABASE_URL
ENV PORT=5000
ENV STATIC_FILES_HOST=polis-client

ADD . /polisServer
WORKDIR /polisServer

RUN npm install

CMD ./start.sh