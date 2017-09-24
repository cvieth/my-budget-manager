FROM node:alpine

# Create app directory
RUN mkdir -p /usr/src/my-budget-manager
WORKDIR /usr/src/my-budget-manager

# Install app dependencies
COPY package.json /usr/src/my-budget-manager/
RUN npm install

# Bundle app source
COPY . /usr/src/my-budget-manager

EXPOSE 8080
CMD [ "npm", "start" ]