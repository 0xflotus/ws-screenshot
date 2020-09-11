#Require Node.js12
FROM node:12-slim

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY * ./

RUN npm install

# Bundle app source
COPY . .

EXPOSE 3000
CMD node ./node_modules/@elestio/cloudgate/cloudgate.js ../../../ -c 1
