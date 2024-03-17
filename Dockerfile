FROM node:14-alpine

# Create app directory
WORKDIR /home/ubuntu/tukitaki/oms_fileupload_brodcast

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN npm install
RUN npm install express
# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
COPY . .

CMD [ "npm", "start" ]
