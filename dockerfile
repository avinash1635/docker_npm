FROM node:10

# Create app directory

WORKDIR /home/avinash/nodejs

# Install app dependencies
# A wildcard is used to ensure both package.json and package-lock.json are copied
# Where available (npm@5+)

COPY package*.json ./

RUN npm install 

# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
COPY . . 
EXPOSE 8080
CMD [ "node", "server.js" ]

