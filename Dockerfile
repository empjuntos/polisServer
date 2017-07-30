FROM node:6.9.1

EXPOSE 5000

# Create app directory
ADD . /code
WORKDIR /code

RUN npm install

#CMD ["sleep", "infinity"]
CMD ["npm", "start"]

