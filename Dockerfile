FROM node:10-alpine

# Create app directory
WORKDIR /api

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json /api/

RUN npm install --production
# If you are building your code for production
# RUN npm install --only=production

# Bundle app source
COPY . /api

EXPOSE 3000
CMD [ "npm", "start" ]