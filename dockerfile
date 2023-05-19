# Specify the base image
FROM node:14

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json files
COPY package.json .
COPY package-lock.json .

# Install dependencies
RUN npm install

# Copy the server.js file
COPY server.js .

# Expose the port
EXPOSE 80

# Set the startup command
CMD ["node", "server.js"]
